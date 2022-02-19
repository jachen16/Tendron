class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    int r, g, b;
    if (myNumSegments == 50) // long
    {
      r = 100;
      g = 0;
      b = 255;
    } else if (myNumSegments == 1) // short
    {
      r = 0;
      g = 200;
      b = 90;
    } else { // med
      r = 0;
      g = 120;
      b = 255;
    }
    float startX, startY, endX, endY;
    startX = myX;
    startY = myY;
    endX = startX;
    endY = startY;
    for (int i = 0; i < myNumSegments; i++)
    {
      stroke(r,g,b);
      myAngle = myAngle + (Math.random()*0.4)-0.2;
      endX = startX + (float)((Math.cos(myAngle))*SEG_LENGTH);
      endY = startY + (float)((Math.sin(myAngle))*SEG_LENGTH);
      line (startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    if (myNumSegments >= 3)
    {
      stroke(r,g,b);
      new Cluster (myNumSegments/3, (int)endX, (int)endY);
    }
  }
}
