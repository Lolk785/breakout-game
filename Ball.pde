class Ball extends GameObject {
  private int speedX;
  private int speedY;
  
  public Ball(int x, int y, int width, int height){
    super(x, y, width, height);
    this.speedX = (int) random(-3, 3);
    this.speedY = (int) random(-3, 3);
    if (this.speedX == 0){
    this.speedX = 1;
    }
    if (this.speedY == 0){
    this.speedY = 1;
    }
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.speedX *= 6;
    this.speedY *= 6;
  }
  
  public void bounceX(){
    speedX = -speedX;
  }
  
  public void bounceY(){
    speedY = -speedY;
  }
  
  public void update(){
    x = x + speedX;
    y = y + speedY;
  }
  
  public void bounceCheck(int left, int top, int right, int bottom){
    if (x < left || (x + width) >= right){
      bounceX();
    }
    if (y < top || (y + height) >= bottom){
      bounceY();
    }
  }
  
  public void draw(){
  fill(200, 0, 0);
  ellipseMode(CORNER);
  ellipse(x, y, width, height);
  }
  
  
}
