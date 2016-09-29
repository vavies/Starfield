int center = 250;
dot [] olive;
void setup(){
	size(500,500);
	olive = new dot[20];
	for(int i = 0; i<olive.length; i++){
		olive[i] = new dot(250+i,250+i);
	}
}
void draw(){
	background(0);
	for(int i = 0; i<olive.length; i++){
		olive[i].show();
		olive[i].move();
	}
}
class dot{
	float myX, myY;
	float angle, speed;
	dot(){
		myX = 250;
		myY = 250;
		angle = 90;
		speed = 0;
	}
	void show(){
		noFill();
		stroke(100,50,250);
		ellipse(myX,myY,25,25);
	}
	void move(int x, int y){
		x = myX;
		y = myY;
		myX = center + 150*cos(speed);
		myY = center + 150*sin(speed);
		speed= speed +0.1;
	}
}
