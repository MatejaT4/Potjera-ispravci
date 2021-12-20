class Pocetni{
  
  String pitanje;
  boolean q = false;
  boolean rectOver = false;
  
  Pocetni(){
  }
  
  void iscrtaj(){
    update();
    if( pocetna ){
      background(naslovnica);
      
      fill(tamnoplava);
      textSize(30);
      text("Za početak potjere\n  pritisnite SPACE", 270, 550);
     
      if(rectOver==true){   
        fill(color(150,150,150));
      }
      else{
        noFill();
      }
      stroke(tamnoplava);
     
      rect(7, 750, 100, 40);
      textSize(18);
      fill(tamnoplava);
      text("Pravila", 27, 777);
      
      
      if(mousePressed)
      {
        if (mouseX >= 7  && mouseX <= 7 + 100 && mouseY >= 750 && mouseY <= 750 + 40)
        {
          pravila = true;
          pocetna = false;
        }
      }
    }
    if( prva ){
      Faza1.iscrtaj();
    }
    if( druga ){
      Faza2.iscrtaj();
    }
    if( izbor ){
      Izbor.iscrtaj(); 
    }
    if( treca ){
      Faza3.iscrtaj(); 
    }
    if( zavrsni ){
      Zavrsni.iscrtaj(); 
    }
    if( pravila ){
      ispisPravila.iscrtaj(); 
    }
  }
  
  void update() {
    if ( overRect() ) {
      rectOver = true;
    } else {
      rectOver = false;
    }
  }

  boolean overRect() {
    if (mouseX >= 7 && mouseX <= 7+100 && 
        mouseY >= 750 && mouseY <= 750+40) {
      return true;
    } else {
      return false;
    }
  }
  
  void provjeriBotun(int key){
    if( prva ) Faza1.provjeriBotun( key );
    if( izbor ) Izbor.provjeriBotun( key );
    if( treca ) Faza3.provjeriBotun( key );
    if ( key == ' ' && pocetna){
      Faza1.time = millis();
      pocetna = false;
      prva = true;
    }
    if( key == ' ' && druga){
      druga = false;
      izbor = true;
    }
    if( key == ' ' && zavrsni ) Zavrsni.provjeriBotun( key );
  }
}
