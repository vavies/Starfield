dot olive;
void setup(){
	size(500,500);
	olive = new dot();
}
void draw(){
	olive.show();
	olive.move();
}
class dot{
	float myX, myY;
	float angle, speed;
	dot(){
		myX = 250;
		myY = 250;
		angle = 90;
		speed = PI/2;
	}
	void show(){
		noFill();
		stroke(100,50,250);
		ellipse(myX,myY,25,25);
	}
	void move(){
		myX = myX + speed;
	}
}
