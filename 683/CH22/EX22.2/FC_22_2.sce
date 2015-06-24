// 22-2
clc;
clear;
//Power P
P=80*10^3; //(Watt)
N=3000; //(Engine rpm)
w=2*%pi*3*10^3/60
Tf=8*10^4/w;
Rm=100;//(mm)
p=0.2 //N/mm^2
u=0.22 
// let width b= (R1-R2). 
//Axial force W=2*pi*Rm*b*p
//Torque T=u*W*Rm
b=Tf/(u*2*%pi*(Rm^2)*p);
b=50; 
R2=Rm+b;
R1=Rm-b;
Di=2*R1; //inner diameter
W=2*%pi*Rm*b*p;
n=8; //n is number of springs
//Axial force per spring W1
W1=W/n;
W1=W1+15;
//axial deflection del
del=10; 
//stiffness k
k=W1/del;
// Spring index C
C=6;
//number of coils n1
n1=6; //Assumption
d=k*n*n1*(C^3)/(80*10^3);
d=11; // Rounding off to nearest standard value
D=C*d;
clearance=2;
FL=((n1+2)*d)+(2*del)+clearance; // two end coils, therefore (2*del)

  // printing data in scilab o/p window

printf("\nThe Torque is %0.2f Nm",Tf);
printf("\nThe width is %0.0f mm",b);
printf("\nThe force is %0.0f N",W);
printf("\nThe Axial force per spring is %0.0f N",W1);
printf("\nThe Spring stiffness is %0.0f N/mm",k);
printf("\nThe Spring wire diameter is %0.0f mm",d);
printf("\nThe Mean coil diameter is %0.0f mm",D);
printf("\nThe Free length is %0.0f mm",FL);

