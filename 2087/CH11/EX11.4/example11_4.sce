

//example 11.4
//calculate number of siphons units required
clc;funcprot(0);
//given
rl=435;         //full reservior level
cl=429.6;       //level of centre of siphon
hfl=435.85;     //high flood level
hfd=600;        //high flood discharge
w=4;            //width of throat
h=2;            //heigth of throat
C=0.65;         //coefficient of discharge
g=9.81;       //acceleration due to gravity

H=hfl-cl;
Q=C*w*h*(2*g*H)^0.5;
n=hfd/Q;
n=round(n*100)/100;
mprintf(" number of siphons units required=%f.\nhence provide 11 siphons units.",n);
