# Potjera

## Pravila igre

*  kako bi zapoceli igru pritisnite tipku `Space`

### Prva faza

* traje 1 minutu i unutar tog vremena igrač treba odgovoriti na što više pitanja kako bi skupio što više novaca za daljnje faze igre
* igrač odgovara tako da unese željeni odgovor pomoću tipkovnice te ga potvrdi klikom na tipku `Enter`
* nakon što istekne minuta, igrač dobije poruku o trenutnom osvojenom iznosu te klikom na tipku `Space` potvrdi da je spreman za drugu fazu igre

### Druga faza

* na početku druge faze igrač bira između tri vrijednosti konačnog iznosa nagrade:
  * za viši iznos nego što je osvojio u prvoj fazi te tako počinje igru samo 1 korak od lovca
  * za iznos koji je osvojio u prvoj fazi i tako počinje 2 koraka ispred lovca
  * za iznos niži od osvojenog i tako počinje 3 koraka ispred lovca
* ovisno o odabranom iznosu za nastavak igre toliko pitanja je igraču preostalo kako bi završio igru i pobijedio lovca
* za svako pitanje igrač i lovac dobiju 3 ponuđena odgovora od kojih je samo jedan točan
* ako igrač ili lovac odgovori točno, pomiče se jedno polje bliže kraju igre
* ako odgovore krivo ostaju na polju na kojem se nalaze
* kraj igre je kada igrač dođe do kraja igrače ploče i tako osvoji odabrani iznos ili kada lovac dode na polje na kojem je igrač čime igrač gubi odabrani iznos
* nakon što pozadina pozeleni ili po crveni (ovisno o ishodu igre) potrebno je kliknuti `Enter` kako bi dobili odgovarajuću poruku

* #### Upute za odgovaranje na pitanja
  * igrač igra na tipkama `a`,`s` i `d` koje redom označavaju odgovor pod a, pod b i pod c
  * lovac igra na tipkama `j`,`k`,`l` koje redom označavaju odgovor pod a, pod b i pod c
  * nakon što obojica odaberu odgovor potrebno je kliknuti tipku `Enter` 3 puta:
    * kako bi se pokazao točan odgovor
    * za pomak potrebne pomake na igraćoj ploči
    * za prikaz idućeg pitanja

### Nastavak igre

* nakon završetka igre klikom na tipku `Space` moguć je povratak na početnu stranicu te započimanje nove igre

### TODO:

* navesti više pitanja kako se ne bi često ponavljala ista pitanja (nama je cilj bila funkcionalnost cijele igre)
* uvesti odabir lovaca
* uvesti da se pitanja ucitavaju iz datoteke ne izravno iz koda
* uvesti vise tocnih odgovora u prvoj fazi igre (u razlicitim padezima, numericki ili rijecima)

### Napomena:
* uvesti konstante za neke cesto koristene koordinate unutar koda
