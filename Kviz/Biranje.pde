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
    rect( 50+30, 125, 700-60, 75 );
    rect( 50+30*2, 200, 700-60*2, 75 );
    rect( 50+30*3, 275, 700-60*3, 75 );
    
    fill( 0 );
    textSize( 45 );
    text( gornja, 330, 185 );
    text( iznos, 330, 260 );
    text( donja, 330, 335 );
    
    fill(0,51,103);
    if( pos == 0 ) {rect( 50+30, 125, 700-60, 75 ); fill(255);text( gornja, 330, 185 );}
    if( pos == 1 ) {rect( 50+30*2, 200, 700-60*2, 75 ); fill(255); text( iznos, 330, 260 );}
    if( pos == 2 ) {rect( 50+30*3, 275, 700-60*3, 75 ); fill(255); text( donja, 330, 335 );}
  
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
}
