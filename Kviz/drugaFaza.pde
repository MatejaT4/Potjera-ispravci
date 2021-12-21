class Druga{
  
  Druga(){
  }
  
  void iscrtaj(){
    background(konfeti);  
    fill(255,126);
    rect(200, 310, 400, 100);
    fill(tamnoplava);
    textSize(28);
    textAlign(CENTER);
    text("Čestitamo, osvojili ste\n" + iznos + " kuna u minuti!", 400, 350);
    
    fill(255);
    textSize(20);
    text("Pritisnite SPACE ako ste spremni za igru na ploči.", 400, 480 );
  }
}
