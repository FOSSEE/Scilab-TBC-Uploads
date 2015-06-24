clear;
clc;
Zo=710*exp(%i*(%pi/(180/14)));l=100;P=0.007+(%i*0.028);Zr=300;
K=round(sinh(P*l)*100)/100;J=round(cosh(P*l)*100)/100;
Zin=Zo*((Zr*J)+(Zo*K))/((Zo*J)+(Zr*K));
C=real(Zin);
D=imag(Zin);
printf("Input impedance of line is Zin = %f /_ %f ohms",abs(Zin),round(atan(D,C)*180*10/%pi)/10);
A=((Zr*J)+(Zo*K));
B=((Zo*J)+(Zr*K));
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")
