// calculating the resistance and output voltage
clc;
R2=119;
R3=119.7;
R1=120.4;
R4=R2*R3/R1;
R4=121.2;
ei=12;
eo=[(R1*R4-R2*R3)/((R1+R3)*(R2+R4))]*ei;
disp(eo, 'output voltage (V)=')