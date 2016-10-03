int center = 250;
dot [] olive;
void setup(){
	size(500,500);
	olive = new dot[20];
	for(int i = 0; i<olive.length; i++){
		for(int a = 0; a<400; a = a + 90){
			if(a>400){
				a = 0;
			}
			olive[i] = new dot(a);
		}
	}
}
void draw(){
	background(0);
	for(int i = 0; i<olive.length; i++){
		olive[i].show();
		olive[i].move();
		System.out.println(olive[i].myX +", " +olive[i].myY );
	}
}
class dot{
	float myX, myY;
	float angle, speed;
	dot(int u){
		myX = 250;
		myY = 250;
		angle = 90;
		speed = u;
	}
	void show(){
		noFill();
		stroke(100,50,250);
		ellipse(myX,myY,25,25);
	}
	void move(){
		myX = center + 150*cos(speed);
		myY = center + 150*sin(speed);
		speed = speed +0.01;
	}
}


