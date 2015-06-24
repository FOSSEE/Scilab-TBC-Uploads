// sum 3-32
clc;
clear;
R1=24;
R2=30;
R3=50;
R4=54;
F=200;
y1=((16*4*2)+(2*20*14*4)+(24*6*27))/((16*4)+(2*20*4)+(24*6));
y2=30-y1;
R=24+y2;
A=(24*6)+(2*4*20)+(4*16);
//Let x= h^2/R^2
x=R/A*((24*log(R2/R1))+(2*4*log(R3/R2))+(16*log(R4/R3)))-1;
x=1/x;
M=F*(60+R);
sigd=F/A;
//Let bending stress at a be sigA
sigA=M/(A*R)*((y2*x/(R-y2))-1);
//Let bending stress at b be sigB
sigB=M/(A*R)*(1+(x*y1/(R+y1)));
//Let resultant at a be Ra
Ra=(sigA+sigd)*10;
//Let resultant at b be Rb
Rb=(sigB-sigd)*10;
// printing data in scilab o/p window
  printf("Ra is %0.2f N/mm^2     ",Ra);
  printf("\n Rb is %0.2f N/mm^2      ",Rb);

//The difference in the answers are due to rounding-off of values.
