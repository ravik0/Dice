void setup()
{
  size(400,400);
	noLoop();
}
void draw()
{
  for (int x = 10; x < 400; x+=50) {
    for(int y = 10; y < 320;y+=40) {
    	Die guy = new Die(x,y);
      guy.show();
    }
  }
}
void mousePressed()
{
	redraw();
}
class Die {
  boolean dice1, dice2, dice3, dice4, dice5, dice6;
  int myX, myY;
  int diceRoll = (int)(Math.random()*6)+1;
	Die(int x, int y) //constructor
	{
    myX = x;
    myY = y;
	}
	void show() {
    fill(255);
    rect(myX,myY,30,30);
    roll();
	}
  void roll() {
    fill(0);
    if(diceRoll == 1) {
      ellipse(myX+15,myY+15,5,5);
    }
    if(diceRoll == 2) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
    }
    if(diceRoll == 3) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+15,myY+15,5,5);
    }
    if(diceRoll == 4) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+5,myY+25,5,5);
      ellipse(myX+25,myY+5,5,5);
    }
    if (diceRoll == 5) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+5,myY+25,5,5);
      ellipse(myX+25,myY+5,5,5);
      ellipse(myX+15,myY+15,5,5);
    }
    if (diceRoll == 6) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+5,myY+25,5,5);
      ellipse(myX+25,myY+5,5,5);
      ellipse(myX+5,myY+15,5,5);
      ellipse(myX+25,myY+15,5,5);
    }
  }
}