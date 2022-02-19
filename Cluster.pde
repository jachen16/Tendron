public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
      double angle = Math.random()*TWO_PI;
      Tendril bob;
      for (int i = 0; i < 7; i++)
      {
        bob = new Tendril(len, angle, x, y);
        bob.show();
        angle = angle + (TWO_PI/7);
      }
    }
}
