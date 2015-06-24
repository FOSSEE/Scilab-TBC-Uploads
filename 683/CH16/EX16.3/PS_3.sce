// sum 16-3
clc;
clear;
d=30;
W=5*10^3;
p=5;
rm=45/2;
u1=0.15/cosd(14.5);
u2=0.15;
dm=d-(p/2);
alpha=atan(p/(%pi*dm));
phi=atan(u1);
Tr1=W*((dm*tan(alpha+phi)/2)+(u2*rm));
Tr1=Tr1*10^-3;
n1=dm/2*tan(alpha)/(dm*tan(alpha+phi)/2+(u2*rm));
T1=W*((dm*tan(phi-alpha)/2)+(u2*rm));
T1=T1*10^-3;
n2=dm/2*tan(alpha)/(dm*tan(phi-alpha)/2+(u2*rm));
u2=0.02;
Tr2=W*((dm*tan(alpha+phi)/2)+(u2*rm));
Tr2=Tr2*10^-3;
n3=dm/2*tan(alpha)/(dm*tan(alpha+phi)/2+(u2*rm));
Te=W*((dm*tan(phi-alpha)/2)+(u2*rm));
Te=Te*10^-3;
n4=dm/2*tan(alpha)/(dm*tan(phi-alpha)/2+(u2*rm));

  // printing data in scilab o/p window
  printf("Tr1 is %0.3f Nm     ",Tr1);
  printf("\n n1 is %0.4f      ",n1);
  printf("\n T1 is %0.3f Nm     ",T1);
  printf("\n n2 is %0.4f      ",n2);
  printf("\n Tr2 is %0.3f Nm     ",Tr2);
  printf("\n n3 is %0.4f      ",n3);
  printf("\n Te is %0.3f Nm     ",Te);
  printf("\n n4 is %0.4f      ",n4);
  
  //The answer to T1 is misprinted in the book.