class Druga{
  
  Druga(){
  }
  
  void iscrtaj(){
    background(konfeti);  
    fill(255,126);
    rect(200, 310, 450, 100);
    fill(tamnoplava);
    textSize(28);
    text("Čestitamo, osvojili ste\n" + iznos + " kuna u minuti!", 260, 350);
    
    fill(255);
    textSize(20);
    text("Pritisnite SPACE ako ste spremni za igru na ploči.", 170, 480 );
  }
}
