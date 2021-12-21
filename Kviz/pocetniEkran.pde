class Pocetni{
  
  String pitanje;
  boolean q = false, first=true;
  
  Pocetni(){
  }
  
  void iscrtaj(){
    
    if( pocetna ){
      if(first==true){
        song3.play();
        first=false;
      }
      background(naslovnica);
      
      fill(255);
      textSize(30);
      textAlign(CENTER);
      text("Za početak potjere\npritisnite SPACE", 400, 650);
      textAlign(LEFT);
      
      if(overRect(7, 750, 100, 40)==true)   
        fill(color(255,255,255,90));
      else
        fill(color(190,170,220, 70));
      stroke(tamnoplava);
      rect(7, 750, 100, 40);
      textSize(18);
      fill(tamnoplava);
      text("Pravila", 27, 777);
      
      if(lovacIgrac == true)
        fill(255);
      else if(overRect(75, 500, 300, 70)==true )   
        fill(color(255,255,255,90));
      else
        fill(color(190,170,220, 70));
      stroke(tamnoplava);
      rect(75, 500, 300, 70);
      textSize(27);
      fill(tamnoplava);
      text("IGRAČ VS. IGRAČ", 110,545);
      
      if(lovacIgrac == false)
        fill(255);
      else if(overRect(405, 500, 300, 70)==true)   
        fill(color(255,255,255,90));
      else
        fill(color(190,170,220, 70));
      stroke(tamnoplava);
      rect(410, 500, 300, 70);
      textSize(27);
      fill(tamnoplava);
      text("IGRAČ VS. RAČUNALO", 415,545);
      
      
      if(mousePressed)
      {
        if (mouseX >= 7  && mouseX <= 7 + 100 && mouseY >= 750 && mouseY <= 750 + 40)
        {
          pravila = true;
          pocetna = false;
        }
        if (mouseX >= 75  && mouseX <= 75 + 300 && mouseY >= 500 && mouseY <= 500 + 70)
        {
          lovacIgrac=true;
        }
        if (mouseX >= 405  && mouseX <= 405 + 300 && mouseY >= 500 && mouseY <= 500 + 70)
        {
          lovacIgrac=false;
        }
      }
    }
    if( prva ){
      Faza1.iscrtaj();
      song3.stop();
      first=true;
    }
    if( druga ){
      Faza2.iscrtaj();
      song3.stop();
      first=true;
    }
    if( izbor ){
      Izbor.iscrtaj(); 
      song3.stop();
      first=true;
    }
    if( treca ){
      Faza3.iscrtaj(); 
      song3.stop();
      first=true;
    }
    if( zavrsni ){
      Zavrsni.iscrtaj(); 
      song3.stop();
      first=true;
    }
    if( pravila ){
      ispisPravila.iscrtaj(); 
    }
  }

  boolean overRect(int x, int y, int width, int height) {
    if (mouseX >= x && mouseX <= x+width && 
        mouseY >= y && mouseY <= y+height) {
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
    
    if( keyCode == LEFT ){
       lovacIgrac=true;
    }
    if( keyCode == RIGHT ){
       lovacIgrac=false;
     }
    
  }
}
