

//example 14.1
//design irrigation channel on Kennedy's theory
clc;funcprot(0);
//given
Q=45;        //discharge
N=0.0225;    //rogosity coefficient
m=1.05;      //critical velocity ratio
S=1/5000;    //bed slope

D=2;  //assume
Vo=0.55*m*D^0.64;
A=Q/Vo;
//for a trapezoidal section
B=(A-0.5*D^2)/2;
P=B+D*5^0.5;
R=A/P;
C=(23+1/N+0.00155/S)*(R*S)^0.5/(1+(23+0.00155/S)*N/R^0.5);
V=C*(R*S)^0.5;
//Vo<V

//assume D=2.2
D=2.2;
Vo=0.55*m*D^0.64;
A=Q/Vo;
B=(A-0.5*D^2)/D;
P=B+D*5^0.5;
R=A/P;
C=(23+1/N+0.00155/S)*(R*S)^0.5/(1+(23+0.00155/S)*N/R^0.5);
V=C*(R*S)^0.5;

//ratio of V and Vo is almost equal to 1
B=round(B*10)/10;
 mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);

