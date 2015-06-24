

//example 14.29
//design an irrigation canal for given data
clc;funcprot(0);
//given
Q=15;        //discharge
m=1;         //critical velocity ratio
r=5.7;       //B/D

D=(Q/(0.55*6.2))^(1/2.64);
B=D*r;
R=(B*D+D^2/2)/(B+D*5^0.5);
Vo=0.55*m*D^0.64;
//applying kutters formula; V=C(RS)^0.5
//where C=(23+1/N+0.00155/S)*(R*S)^0.5/(1+(23+0.00155/S)*N/R^0.5);
//assuming S^0.5=y
y=poly([-2D-5,1.55D-3,-0.968,67.5],'x','c');
roots(y);
//taking real values of y
S=0.0141937^2;
B=round(B*100)/100;
D=round(D*100)/100;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);
mprintf("\nBed slope=%f.",S);

