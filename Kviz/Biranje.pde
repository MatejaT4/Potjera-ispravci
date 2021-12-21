class Biranje{
  
  int gornja, donja;
  
  Biranje(){
  }
  
  void iscrtaj(){
    background(pozadina);
    if( iznos == 0){
      gornja = 11000;
      donja = -3500;
    }
    else{
      gornja = iznos * 4;
      donja = iznos / 2;
    }
    fill(255, 126);
    for( int i = 0; i < 7; i++ )
      rect( 50+30*i, 50 + i * 75, 700-60*i, 75 );
    fill(255);
    
    if(pos==0)
      fill(color(0,51,103));
    else if(overRect(50+30, 125, 700-60, 75)==true)   
      fill(color(0,121,173));
    else
      fill(255);
    rect( 50+30, 125, 700-60, 75 );
    
    if(pos==1)
      fill(color(0,51,103));
    else if(overRect(50+30*2, 200, 700-60*2, 75)==true)   
      fill(color(0,121,173));
    else
      fill(255);
    rect( 50+30*2, 200, 700-60*2, 75 );
    
    if(pos==2)
      fill(color(0,51,103));
    else if(overRect(50+30*3, 275, 700-60*3, 75 )==true)   
      fill(color(0,121,173));
    else
      fill(255);
    rect( 50+30*3, 275, 700-60*3, 75 );
    
    fill( 0 );
    textSize( 45 );
    textAlign(CENTER);
    text( gornja, 400, 175 );
    text( iznos, 400, 250 );
    text( donja, 400, 325 );
    
    fill(255);
    textSize(20);
    text("Pritisnite ENTER za dalje.", 400, 670 );
    
   /* fill(0,51,103);
    if( pos == 0 ) {rect( 50+30, 125, 700-60, 75 ); fill(255);text( gornja, 400, 175 );}
    if( pos == 1 ) {rect( 50+30*2, 200, 700-60*2, 75 ); fill(255); text( iznos, 400, 250 );}
    if( pos == 2 ) {rect( 50+30*3, 275, 700-60*3, 75 ); fill(255); text( donja, 400, 325 );}*/
  
    if(mousePressed)
    {
      
      if (overRect(50+30, 125, 700-60, 75)==true)
      {
        pos=0;
      }
      if (overRect(50+30*2, 200, 700-60*2, 75)==true)
      {
        pos=1;
      }
      if (overRect(50+30*3, 275, 700-60*3, 75)==true)
      {
        pos=2;
      }
    }
  }
  
  void provjeriBotun( int key ){
     if( keyCode == UP ){
       if( pos == 1 || pos == 2 ) pos--;
       else pos = 2;
     }
     if( keyCode == DOWN ){
       if( pos == 0 || pos == 1 ) pos++;
       else pos = 0;
     }
     if( key == ENTER ){
       if( pos == 0 ) iznos = gornja;
       if( pos == 2 ) iznos = donja;
       pos = pos + 1;
       izbor = false;
       treca = true;
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
}
