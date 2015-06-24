// sum 27-1
clc;
clear;
P=8000;
N1=400;
N2=200;
i=N1/N2; //i=Zg/Zp=dg/dp
gamma1=atan(1/i);
gamma2=90-gamma1;
rp=200;
R=rp/sin(gamma1);
b=0.2*R;
rm1=rp-(b*sin(gamma1)/2);
Pt=P*1000*60/(2*%pi*N1*rm1);
alpha=20*%pi/180;
Ps=Pt*tan(alpha);
Pr=Ps*cos(gamma1);
Pa=Ps*sin(gamma1);

  // printing data in scilab o/p window
  printf("Pt is %0.0f N  ",Pt);
  printf("\n Ps is %0.2f N  ",Ps);
  printf("\n Pr is %0.2f N  ",Pr);
  printf("\n Pa  is %0.2f N  ",Pa);

//The difference in the values is due to rounding-off of the values.
