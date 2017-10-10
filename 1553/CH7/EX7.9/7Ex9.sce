//Chapter 7 Ex 9

clc;
close;

//let first number be x,thus other numbers are x+2 and x+4;
//given is x^2+(x+2)^2+(x+4)^2=2531; after solving equation is x^2+4*x-837
 mycoeff=[-837 4 1];
p=poly(mycoeff,"x","coeff");
r=roots(p);
r1=r(1)+2;
r2=r(1)+4;
printf("The numbers are either %d, %d, %d OR",r(1),r1,r2);
r3=r(2)+2;
r4=r(2)+4;
printf(" %d, %d, %d",r(2),r3,r4);
