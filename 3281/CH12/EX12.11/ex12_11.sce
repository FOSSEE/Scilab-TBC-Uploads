//Page Number: 654
//Example 12.11
clc;
//Given
l0=0.15; //cm
lmbg=2*2.24; //cm
le=1.14; //cm
a=2.286; //cm
d=2;

B0=(2*%pi)/lmbg;
x=tan(B0*l0)/(B0*l0);
//Also
x1=(l0*x)/le;
//Correct value seems to be
Bele=2.786;
e1=((((a/%pi)^2)*(Bele/le)^2)+1);
e2=(((2*a)/lmbg)^2)+1;
Er=e1/e2;
disp(Er,'Er:');


//Answer in book for Er is given as 2.062 but it should be 2.038
