int diceNumber;
int time = 0;
int diceFinal = diceNumber;
void setup()
{
  size(400,400);
	noLoop();
}
void draw()
{
  background(160);
  for (int x = 10; x < 400; x+=50) {
    for(int y = 10; y < 320;y+=40) {
    	Die guy = new Die(x,y);
      guy.show();      
    }
  }
  text("Roll Count: " +  diceNumber, 150,350);
  diceFinal+=diceNumber;
  text("Total Roll Count: " + diceFinal, 150, 370);
}
void mousePressed()
{
	redraw();
  diceNumber = 0;
}
class Die {
  boolean dice1, dice2, dice3, dice4, dice5, dice6;
  int myX, myY;
  int diceRoll = (int)(Math.random()*6)+1;
  int Stupid = diceRoll;
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
      diceNumber+=1;
    }
    if(diceRoll == 2) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      diceNumber+=2;
    }
    if(diceRoll == 3) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+15,myY+15,5,5);
      diceNumber+=3;
    }
    if(diceRoll == 4) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+5,myY+25,5,5);
      ellipse(myX+25,myY+5,5,5);
      diceNumber+=4;
    }
    if (diceRoll == 5) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+5,myY+25,5,5);
      ellipse(myX+25,myY+5,5,5);
      ellipse(myX+15,myY+15,5,5);
      diceNumber+=5;
    }
    if (diceRoll == 6) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+5,myY+25,5,5);
      ellipse(myX+25,myY+5,5,5);
      ellipse(myX+5,myY+15,5,5);
      ellipse(myX+25,myY+15,5,5);
      diceNumber+=6;
    }
  }
}