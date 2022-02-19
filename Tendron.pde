public void setup()
{
  size(600, 600);  
  background(252, 251, 154);
  noLoop();
}

public void draw()
{
  background(252, 251, 154);
  Cluster c = new Cluster(50, 300, 300); // initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed()
{
  redraw();
}
