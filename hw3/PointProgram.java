import java.util.Scanner;

// Zorah Fung, CSE 142
// This client program shows an example of creating and using
// Point objects created from our Point class template.
public class PointProgram {
   public static void main(String[] args) {
      // Create a new Point object initializing x to 3 and y to 4
      Point p1 = new Point(3, 4);
      
      Point p2 = new Point(6, 8);
      // p2.x = -100000; // x is a private field. Would give me an error.
      
      // Create a new "default" Point.
      Point p3 = new Point();
      
      System.out.println("p1 = " + p1);
      System.out.println("p2 = " + p2);
      System.out.println("p3 = " + p3);
      
      System.out.println("Distance of p1 = " + p1.distanceFromOrigin());
      System.out.println("Distance of p2 = " + p2.distanceFromOrigin());
      
      p1.translate(2, 3);
      p2.translate(4, 8);

      System.out.println("p1 = " + p1);
      System.out.println("p2 = " + p2);
   }

   public static Point createPointFromUser(Scanner input) {
      System.out.print("Please input an x value: ");
      int x = input.nextInt();
      System.out.print("Please input a y value: ");
      int y = input.nextInt();
      return new Point(x, y);
   }

   private static void sweetSecretMethod(Type paramName, OtherType otherParamName, boolean cRaZYpARamETeR) {
      System.out.println("private static void sweetSecretMethod(Type paramName, OtherType otherParamName, boolean     cRaZYpARamETeR) {");
      System.out.println("public methods are for loooozers");
   }
}

// This class represents a Point on the cartesian plane
class Point {
   private int x;
   private int y;
   
   // Constructs a new Point with the given x and y
   public Point(int x, int y) {
      this.x = x;
      this.y = y;
   }
   
   // Constructs a new Point at the origin
   public Point() {
      x = 0;
      y = 0;
   }
   
   // Translates this point by the given dx and dy
   public void translate(int dx, int dy) {
      x += dx;
      y += dy;
   }
   
   // Returns this Point's distance from origin
   public double distanceFromOrigin() {
      return Math.sqrt(x * x + y * y);
   }
   
   // Returns the String representation of this Point
   public String toString() {
      return "(" + x + ", " + y + ")";
   }

   // Sets this Point to have a new X and Y
   private void setLocation(int newX, int newY) {
      x = newX;
      y = newY;
   }
}

class Type { }

class OtherType { }
