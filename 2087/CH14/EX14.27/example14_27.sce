

//example 14.27
//design irrigation channel by Kennedy method
clc;funcprot(0);
//given
Q=50;          //discharge
r=2.5;         //B/D ratio
m=1.1;         //critical velocity ratio
N=0.025;       //rogosity coefficient
s=0.5;         //side slope of channel

//using the equation of Vo and Q=A*V;we get
D=(Q/1.815)^(1/2.64);
B=r*D;
R=(B*D+0.5*D^2)/(B+2.236*D);
Vo=0.55*m*D^0.64;

//applying kutters formula; V=C(RS)^0.5
//where C=(23+1/N+0.00155/S)*(R*S)^0.5/(1+(23+0.00155/S)*N/R^0.5);
//assuming S^0.5=y
y=poly([-3.737D-7,2.46D-5,-0.0199,1],'x','c');
roots(y);
//taking real values of y
S=0.0196171 ^2;
B=round(B*100)/100;
D=round(D*100)/100;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);
mprintf("\nBed slope=%f.",S);
