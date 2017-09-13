int diceNumber;
int time = 0;
int diceFinal = diceNumber;
int dice1,dice2,dice3,dice4,dice5,dice6; //use to bar graph
void setup()
{
  size(400,400);
	noLoop();
}
void draw()
{
  background(160);
  for (int y = 10; y < 320; y+=40) {
    for(int x = 10; x < 400; x+=50) {
    	Die guy = new Die(x,y);
      guy.show();      
    }
  }
  text("Roll Count: " +  diceNumber, 150,350);
  diceFinal+=diceNumber;
  text("Total Roll Count: " + diceFinal, 150, 370);
  fill(255,0,0);
  //statistic bars
  rect(10,360,10,-dice1);
  rect(25,360,10,-dice2);
  rect(40,360,10,-dice3);
  rect(55,360,10,-dice4);
  rect(70,360,10,-dice5);
  rect(85,360,10,-dice6);
  fill(0);
  //above bars
  text(dice1,8,360-dice1);
  text(dice2,23,360-dice2);
  text(dice3,38,360-dice3);
  text(dice4,53,360-dice4);
  text(dice5,68,360-dice5);
  text(dice6,83,360-dice6);
  //below bars
  text("Number of Dice", 10, 390);
  text("1",10,375);
  text("2",25,375);
  text("3",40,375);
  text("4",55,375);
  text("5",70,375);
  text("6",85,375);
}
void mousePressed()
{
	redraw();
  diceNumber = 0;
  dice1 = 0;
  dice2 = 0;
  dice3 = 0;
  dice4 = 0;
  dice5 = 0;
  dice6 = 0;
}
class Die {
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
      diceNumber+=1;
      dice1++;
    }
    if(diceRoll == 2) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      diceNumber+=2;
      dice2++;
    }
    if(diceRoll == 3) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+15,myY+15,5,5);
      diceNumber+=3;
      dice3++;
    }
    if(diceRoll == 4) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+5,myY+25,5,5);
      ellipse(myX+25,myY+5,5,5);
      diceNumber+=4;
      dice4++;
    }
    if (diceRoll == 5) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+5,myY+25,5,5);
      ellipse(myX+25,myY+5,5,5);
      ellipse(myX+15,myY+15,5,5);
      diceNumber+=5;
      dice5++;
    }
    if (diceRoll == 6) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+5,myY+25,5,5);
      ellipse(myX+25,myY+5,5,5);
      ellipse(myX+5,myY+15,5,5);
      ellipse(myX+25,myY+15,5,5);
      diceNumber+=6;
      dice6++;
    }
  }
}