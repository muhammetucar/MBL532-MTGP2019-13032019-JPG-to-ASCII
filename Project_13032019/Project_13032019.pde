PImage resim;
PFont font;
color[][] r = new color [900][900];

int[][] rRED = new int [900][900];
int[][] rGREEN = new int [900][900];
int[][] rBLUE = new int [900][900];

char[][] karakterR = new char [900][900];
char[][] karakterG = new char [900][900];
char[][] karakterB = new char [900][900];

void setup()
{
  background(225);
  size(900, 900);
  resim = loadImage("bugsy.JPG");
  font = loadFont("Gabriola-48.vlw");

  for (int i=0; i<600; i++)
  {
    for (int j=0; j<600; j++)
    {
      r[i][j]= resim.get(i, j);
      rRED[i][j] = int(red(resim.get(i, j)));
      rGREEN[i][j] = int(green(resim.get(i, j)));
      rBLUE[i][j] = int(blue(resim.get(i, j)));
      karakterR [i][j] = (char)(int(red(resim.get(i, j))));
      karakterG [i][j] = (char)(int(green(resim.get(i, j))));
      karakterB [i][j] = (char)(int(blue(resim.get(i, j))));
    }
  }
}

void draw()
{
  //image(resim, 0, 0);

  int bolX, bolY;
  bolX = 150;
  bolY = 150;

  for (int i = 0; i<bolX; i++)
  {
    for (int j = 0; j<bolX; j++)
    {
      fill(rRED[i * width/bolX][j * height/bolY], rGREEN[i * width/bolX][j * height/bolY], rBLUE[i * width/bolX][j * height/bolY]);
      rect (i * width/bolX, j * height/bolY, width/bolX, height/bolY);

      //fill(50);
      textFont(font, 32);
      fill(255,0,0);
      text(karakterR[i*width/bolX][j*height/bolY], i * width/bolX, j * height/bolY);
      fill(0,255,0);
      text(karakterG[i*width/bolX][j*height/bolY], i * width/bolX, j * height/bolY);
      fill(0,0,255);
      text(karakterB[i*width/bolX][j*height/bolY], i * width/bolX, j * height/bolY);
    }
  }
}
