class Zavrsna{
  
  Zavrsna(){
  }
  
  void iscrtaj(){
    textAlign(CENTER);
    background(konfeti);
    textSize(28);
    fill(255);
    if( win ){  
      fill(255,126);
      rect(200, 310, 400, 100);
      fill(tamnoplava);
      textSize(28);
      text("Čestitamo, osvojili ste\n" + iznos + " kuna!", 400, 350);
    }
    else{
      background(izgubio);
      fill(255,126);
      rect(200, 310, 400, 100);
      fill(tamnoplava);
      textSize(28);
      text( "Dobra igra na ploči,ali\n    ipak ste ulovljeni.", 400, 350);
    }
    
    fill(255);
    textSize(20);
    text( "Pritisnite SPACE za povratak na početnu stranicu.", 400, 480);
  }
  
  void provjeriBotun( int key ){
    win = false;
    pos = 1;
    iznos = 0;
    Faza1.m = 0;
    Faza1.vrime = 60000;
    Faza1.odgovor = "";
    Faza1.feedback = "";
    Faza1.iskoristeniIndeksi = new int[45];
    Faza1.koristenaPitanja = 0;
    Faza3.iskoristeniIndeksi = new int[32];
    Faza3.koristenaPitanja = 0;
    zavrsni = false;
    pocetna = true;
  }
}
