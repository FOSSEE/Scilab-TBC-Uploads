

//example 14.26
//calculate bed width of channel;also check depth using Kutter equation
clc;funcprot(0);
//given
Q=5;              //discharge
S=0.2/1000;       //bed slope
m=0.8;            //critical velocity ratio
s=1/2;            //side slope of chanel
C=30;
//assuming
D=1;
Vo=0.55*m*D^0.64;
A=Q/Vo;
B=A/D-(s*D);
P=B+2.43*D;
R=A/P;
V=C*(R*S)^0.5;
//Vo>V
//hence take second trial
D=0.8;     //assume
Vo=0.55*m*D^0.64;
A=Q/Vo;
B=A/D-(s*D);
P=B+2.43*D;
R=A/P;
V=C*(R*S)^0.5;
//again Vo>V
//hence we take third trial
D=0.7;
Vo=0.55*m*D^0.64;
A=Q/Vo;
B=A/D+(s*D);
P=B+2.43*D;
R=A/P;
V=C*(R*S)^0.5;
B=round(B*100)/100;
//Vo is almost equal to V;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);
