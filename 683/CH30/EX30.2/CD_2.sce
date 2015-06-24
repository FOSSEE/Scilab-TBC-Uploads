// sum 30-2
clc;
clear;
G=4;
n1=17;
n2=n1*G;
N1=2300;
Kc=1.2; //from table 30-2
p=12.7; //fom table 30-1
D1=p*n1;
D2=p*n2;
phi=2*10.6;
x=tan(phi/2); //phi/2 = 10.6deg, from table 30-3
Da1=(p/x)+(0.6*p);
Da2=(p/x*4)+(0.6*p);
Cmin=Kc*((Da1+Da2)/2);
Ln1=(2*Cmin/p)+((n1+n2)/2)+((((n2-n1)/(2*%pi))^2)*(p/Cmin));
Ln1=80;
  // printing data in scilab o/p window
  printf("Ln is %0.0f  ",Ln1);
