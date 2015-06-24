// sum 13-3
clc;
clear;
P=40*10^3;
sigt=60;
sigc=125;
T=45;
a=sqrt(P*3/(2*sigt));
a=33;
t=a/3;
b=P/(4.5*t*T);
b=20;
b1=1.25*b;
t1=P*3/(4*a*sigt);
t1=16;
l2=P/(2*2*T*t1);
l2=14;
l1=P/(2*a*T);
l1=14;
l3=(0.6*a);
l3=20;
l4=11;
sigcr=P/(t*a);
sigcr1=P/(2*t1*t);

  // printing data in scilab o/p window
  printf("a is %0.0f mm     ",a);
  printf("\n t is %0.0f mm     ",t);
  printf("\n t1 is %0.0f mm     ",t1);
  printf("\n b is %0.0f mm     ",b);
  printf("\n b1 is %0.0f mm     ",b1);
  printf("\n l1 is %0.0f mm     ",l1);
  printf("\n l2 is %0.0f mm     ",l2);
  printf("\n l3 is %0.0f mm     ",l3);
  printf("\n l4 is %0.0f mm     ",l4);
  printf("\n sigcr is %0.1f MPa     ",sigcr);
  printf("\n sigcr1 is %0.1f MPa     ",sigcr1);