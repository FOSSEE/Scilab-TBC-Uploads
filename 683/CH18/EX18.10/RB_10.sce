// sum 18-10
clc;
clear;
Co=695;
C=1430;
Pa1=200;
Pr1=600;
x=Pa1/Co;
y=Pa1/Pr1;
e=0.37+((0.44-0.37)*0.038/0.28);
X=1;
Y=0;
P1=600;
Pa2=120;
Pr2=300;
X=0.56;
Y=1.2-(0.2*0.042/0.12);
P2=(X*Pr2)+(Y*Pa2);
N1=1440;
N2=720;
t1=2/3;
t2=1/3;
n1=N1*t1;
n2=N2*t2;
N=(n1+n2);
Pe=(((n1*P1^3)+(n2*P2^3))/N)^(1/3);
L=(C/Pe)^3;
Lh=L*10^6/(N*60);

  // printing data in scilab o/p window
  printf("Lh is %0.2f hrs    ",Lh);
  
  //The difference in the value of Lh is due to rounding-off of value of Pe