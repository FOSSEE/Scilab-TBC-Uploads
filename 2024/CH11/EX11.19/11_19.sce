clc
//Initialization of variables
n1=0.95
n2=0.05
n3=0.025
P=147 //psia
pa=14.7 //psia
//calculations
n=n1+n2+n3
p1=n1/n *P/pa
p2=n2/n *P/pa
p3=n3/n *P/pa
Kp1= p1/(p2*p3^0.5)
Kp2= p1^2 /(p2^2 *p3)
//results
printf("In case 1, Equilibrium constant = %.1f ",Kp1)
printf("\n In case 2, Equilibrium constant = %.1f ",Kp2)
