int center = 250;
dot [] olive;
void setup(){
	size(500,500);
	olive = new dot[20];
	for(int i = 0; i<olive.length; i++){
		olive[i] = new dot();
	}
	olive[1] = new third();
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
		myX = x;
		myY = y;
		angle = 90;
		speed = 0;
	}
	void show(){
		noFill();
		stroke(100,50,250);
		ellipse(myX,myY,25,25);
	}
	void move(){
		myX = center + 150*cos(speed);
		myY = center + 150*sin(speed);
		speed= speed +0.01;
	}
}
class third extends dot{
	void move(){
		for(int i = 0; i<360; i++)
			speed = speed =0.2
			myX = center+150*cos(speed);
			myY = center+150*sin(speed);
		};

	}
}
