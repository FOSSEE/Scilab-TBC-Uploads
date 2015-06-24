//FRICTION CLUTCHES
// PAGE 584, 22-6
clc;
P=5*10^3;
N=1000;
w=2*%pi*N/60;
Rm=50;
pm=0.3;
Tf=P/w;
u=0.1;
R2=50*2/(0.6+1);
R1=0.6*R2;
//According to uniform Wear theory
W=pm*Rm*(R2-R1)*2*%pi;
n=Tf*(10^3)/(u*W*Rm);
pmax=pm*Rm/R1;

  // printing data in scilab o/p window
printf("\nThe angular speed is %0.2f rad/sec",w);
printf("\nThe Torque is %0.3f Nm",Tf);
printf("\nThe Inner radius is %0.1f mm",R1);
printf("\nThe Outer radius is %0.1f mm",R2);
printf("\nThe number of contacting surfaces is %0.0f ",n);
printf("\nThe max. pressure is %0.1f N/mm^2",pmax);
