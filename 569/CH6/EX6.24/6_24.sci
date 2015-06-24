// calculating the current
clc;
R2=1000;
R3=1000;
R1=1010;
R4=1000;
ei=100;
eo=[(R1*R4-R2*R3)/((R1+R3)*(R2+R4))]*ei;
disp(eo, 'open circuit voltage (V)=')
Ro=[R1*R4/(R1+R4)]+[R2*R3/(R2+R3)];
Rm=4000;
im=eo/(Ro+Rm);
disp(im,'current (A)=')
