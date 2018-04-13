void setup() {
  size(900, 400);
  background(127);
}
void draw() {
  //makes previos renderings not appear on screen. 
  background(127);
  //use adobe color wheel to choose colors
  //year compony organization and function
  drawRef();
  histEvent(100, 190, 100, 60, 115, 172, "The ENIAC", " Was invented in 1943 by \n Presper Eckert and  John \n  Mauchly  for the  US \n military,  and it could to \n complex math calculations \n quickly, which is what was needed \n in WWII", true);
  histEvent(300, 190, 100, 260, 115, 172, "ERA 1101", "Was released in 1950, was built \n by Remingon-Rand, used for high \n speed computing and stored 1 \n million bits", true);
  histEvent(500, 190, 130, 460, 115, 172, "      Ferranti Mark 1", "Realeased in 1951 by the British \n government it was the first \n comercialy avaliable computer.", true);
  histEvent(700, 190, 100, 660, 115, 172, "MIT LINC", "Was made in 1962 and was made \n by: MIT Lincoln Labaratory and \n was engenered by: engineer \n Wesley Clark and was designed \n to function for only one user.", true);
  histEvent(110, 280, 100, 70, 320, 172, "SSEC", "Released in 1948, the project was \n lead by Wallace Eckert, and was a \n gaint calculator that was able to \n do 50 14 by 14 digit calculations \n per second", false);
  histEvent(310, 280, 100, 270, 320, 172, "SEAC", "Realeased in 1950, was promated \n by the US Bereau of standards \n and was the first stored program \n computer.", false);
  histEvent(510, 280, 100, 470, 320, 172, "DEUCE", "It came out in 1955 by the \n English Electric company, and \n was designed for science and \n engenering problems.", false);
  histEvent(710, 280, 100, 670, 320, 172, "Apple 2", "was made by apple overseed by \n steve Wozniak it produced colored \n graphics when pluged in to a \n screen and was used for the \n game Breakout.", false);
  //Computerhistory.org - timeline of computer history
}
void drawRef() {
  //stroke();
  textSize(30);
  fill(0);
  textAlign(CENTER);
  text("History of Computers:", 450, 31);
  textSize(16);
  textLeading(20);
  textAlign(CENTER);
  text("The history of Computers goes from the first computer \n invented in 1943 taking up 1800 sq ft up to modern \n computers able to be smaller than your hand!", 450, 56); 
  textSize(13);
  text("By: IG9626", 450, 113);
  line(50, 250, 850, 250);
}
void histEvent(int x, int y, int w, int xx, int yy, int ww, String title, String desc, boolean top) {
  if (top) {
    fill(0);
    line(x+45, y+30, x+65, y+60);
  } else {
    fill(0);
    line(x+45, y, x+65, y-30);
  }

  fill(127);
  rect(x, y, w, 30);
  fill(0);
  textSize(17);
  text(title, x+50, y+20);
  if (mouseX > x && mouseX < x+150 && mouseY > y && mouseY < y+30) {
    if (top) {
      textSize(10);
      textLeading(10);
      text(desc, x+49, y-65);
      noFill();
      rect(xx, yy, ww, 70);
    } else {
      textSize(10);
      textLeading(10);
      text(desc, x+50, y+50);
      noFill();
      rect(xx, yy, 172, 65);
    }
  }
}
