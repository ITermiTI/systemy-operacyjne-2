#! /bin/bash

#a)
ps aux --no-headers | awk \
' $3 > 0.1 \
{ print "Uzytkownik " $1 " ma uruchomiony proces o PID " $2 " - CPU = " $3 ", MEM = " $4 } '

#b)
ps --no-headers -eo pid,etimes | awk \
' $2 > 300 { print "Proces o PID " $1 " trwa: " $2 / 60 } \
'
#c)
ps aux --no-headers | awk \
' BEGIN { MEMSUM = 0; CPUSUM = 0 } \
{ MEMSUM = MEMSUM + $4; CPUSUM = CPUSUM + $3 } \
END { print "Suma CPU: " CPUSUM ", Suma MEM: " MEMSUM } '

#d)
ps aux --no-headers | awk \
' { arrayCPU[ $1 ] = arrayCPU[ $1 ] + $3 } \
{ arrayMEM[ $1 ] = arrayMEM[ $1 ] + $4 } \
END { for ( key in arrayCPU ) print "Uzytkownik " key " lacznie zuzywa CPU: " arrayCPU[ key ] " i MEM: " arrayMEM[ key ] } \
'

#e)s
ps aux --no-headers | awk \
' { arrayCPU[ $1 ] = arrayCPU[ $1 ] + $3 } \
{ arrayMEM[ $1 ] = arrayMEM[ $1 ] + $4 } \
END { MAXCPU = -1; MAXMEM = -1; for ( key in arrayCPU ) \
{ if ( arrayCPU[ key ] > MAXCPU ) { MAXCPU = arrayCPU[ key ]; MAXCPUUSER = key }
if ( arrayMEM[ key ] > MAXMEM ) { MAXMEM = arrayMEM[ key ]; MAXMEMUSER = key } } \
print "Uzytkownik " MAXCPUUSER " zuzywa najwiecej CPU: " MAXCPU ". Uzytkownik " MAXMEMUSER " zuzywa najwiecej MEM: " MAXMEM } '
