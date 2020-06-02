Laboratoria miały na celu nauki pisania skryptów w bashu. Ostatnie laboratoria były odmianą niektórych z zadań w języku Python

LAB4:
  Zad 1.
    Napisać skrypt, który w zadanym katalogu(parametr wywołania skryptu):
    - w zadanym katalogu stworzy strukturę plików pozwalającą na przetestowanie zadania
    - a) znajdzie pliki, które w nazwie zawierają słowo "test" - posortuje je i wyświetli ograniczając ich liczbę do pierwszych trzech
    - b) znajdzie pliki z rozszerzeniem *.jpg lub *.png i z wykorzystaniem pętli while wyświetli ścieżki kanoniczne do tych plików zamieniając "/" na "|"
    - c) usunie (zanim zaczną państwo usuwać pliki proponuję je wyświetlić!) wszystkie pliki starsze niż 1 min - ograniczyć wyszukiwanie plików do 2 podkatalogów w głąb - wykorzystaj flagę exec 
  Zad 2.
    Napisać skrypt, który w zadanym katalogu(parametr wywołania skryptu):
    - w zadanym katalogu stworzy strukturę plików pozwalającą na przetestowanie zadania
    - a) zapisze do pliku ./result.dat i wyświetli na ekranie pliki, które mają rozszerzenie (*.txt lub *.dat) i są większe niż 1 kilobajt w formacie: "ścieżka_kanoniczna|data|czas" np. "/home/x/y/z/test.txt|31.03.2020|10:30:12"
    - b) z pliku ./result.dat dla każdego wiersza wydobędzie samą nazwę pliku(bez rozszerzenia) i minutę: np. "test 30"
    


LAB5: 

    a) Dla każdego procesu, który zużywa więcej pamięci niż 0.1% wyświetlić: "Użytkownik ____ ma uruchomiony proces o PID ____ - CPU = ___, MEM = ___".
    b) Dla każdego procesu, który trwa dłużej niż 0:05 wyświetlić: "Proces o PID ___ trwa: ___" - przy czym czas zawsze wyświetlać w minutach(nawet jeśli powyżej 59)
    c) Suma zużycia CPU i osobno MEM: "Suma CPU: ___, Suma MEM: ___"
    d) Podobnie co c, ale suma dla wszystkich użytkowników np: "Użytkownik ____ łącznie zużywa CPU: ___ i MEM: ___"
    e) Znajdzie użytkownika, który zużywa najwięcej CPU i takiego, który zużywa najwięcej MEM: "Użytkownik ___ zużywa najwięcej CPU: ___. Użytkownik ___ zużywa najwięcej MEM: ___"

    Uwaga: W miejscach ___ należy wpisać oczywiście odpowiednie wartości.




LAB6:
  Zad 1
    Proszę zapisać wyrażenia regularne, aby wykryć czy dowolny ciąg pasuje do poniższych problemów:
    a) Imię i nazwisko - proszę uwzględnić: drugie imię, nazwisko z myślnikiem. Czyli wzorzec powinien wykryć zarówno: "Adam Nowak" i "Anna Maria Kowalska-Nowak". Niewymagane są polskie znaki.
    b) kod pocztowy i miasto: proszę uwzględnić polskie znaki oraz uwzględnić też takie miejscowości jak: "Zielona Góra" czy "Bielsko-Biała"
    c) e-mail - proszę uwzględnić również wiele "sub-domen" np. "student.pwr.edu.pl". Proszę nie korzystać z zaawansowanych gotowców (mimo iż w projektach komercyjnych jest to rekomendowane podejście).
    d) deklaracje funkcji w C np: "void fun(int, *int);". 
    
  Zad 2
    Napisać program w bash, który z wykorzystaniem wyrażeń regularnych przeanalizuje https://en.wikipedia.org/wiki/Wikipedia:10,000_most_common_passwords i z sekcji "Top-100" policzy ile jest haseł:
    - zawierających tylko same cyfry
    - zawierających tylko same małe litery
    - składających się z powtórzonego tego samego znaku



LAB7: 
  Wersja pythonowa podanych zadań:

    1. Numerowanie wszystkich plików w zadanym katalogu (parametr wywołania skryptu), do
    których mamy ustawione prawo wykonywania („execute”), przez dodanie dodatkowego
    członu rozszerzenia o postaci .<numer kolejny>. Numeracja powinna przebiegać według
    wielkości plików. 
    2. Usuwanie wszystkich podkatalogów zadanego katalogu (parametr wywołania skryptu).
Zawartość tych podkatalogów należy przenieść do katalogu nadrzędnego. Usuwanie dotyczy
tylko jednego poziomu podkatalogów. 
    3. Policzenie wszystkich plików w zadanym katalogu (parametr wywołania skryptu), do których
ustawione jest prawo dostępu do wykonania („execute”). 
