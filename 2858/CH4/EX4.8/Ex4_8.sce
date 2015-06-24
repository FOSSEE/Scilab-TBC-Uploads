//example 4.8
clc; funcprot(0);
cu=52;
B=1.5;
L=3;
k=0.107*cu+2.5;
disp(k,"Df/B of square");
A=L*B;
Beta=0.2;
Gamma=18.9;
Df=1.8;
Qu=A*(Beta*(7.56+1.44*B/L)*cu+Gamma*Df);
disp(Qu,"ultimate shear force in kN");

