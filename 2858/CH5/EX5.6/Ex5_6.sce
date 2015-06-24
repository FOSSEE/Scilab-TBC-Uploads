//example 5.6
clc; funcprot(0);
q=3.06;
qbar=25;
C1=1-0.5*(q/(qbar-q));
Sum=0;
C2=1+0.2*log10(10/0.1);
L=[1, 2, 3, 4, 5];
Dz=[48, 48, 96, 48, 144];
Es=[750, 1250, 1250, 1000, 2000];
z=[24, 72, 144, 216, 312];
Iz=[0.275, 0.425, 0.417, 0.292, 0.125];
printf("Layer No.\t deltaz (in)\t Es(lb/in^2)\t z to the middle of the layer (in)  Iz at the middle of the layer  Iz/delta(z) \n");
for i=1:5
    k(i)=Iz(i)/Es(i)*Dz(i);
    printf("%.2f\t \t %.2f\t\t   %.2f\t\t %.2f \t\t\t\t\t   %.2f\t\t    %.4f \n ",L(i),Dz(i),Es(i),z(i),Iz(i),k(i));
    Sum=Sum+k(i);
end
Se=C1*C2*(qbar-q)*Sum;
disp(Se,"settlement in inches");

