clear;
clc;
Zo=55;Zr=115+(%i*75);n=1.183;
//value of Zr as taken in solution
m=(2*%pi*n)-(2*%pi);
Zin=Zo*(Zr+(%i*Zo*tan(m)))/(Zo+(%i*Zr*tan(m)));
C=real(Zin);
D=imag(Zin);
printf("Sending end impedance is Zin = %f + j(%f) ohms",fix(C*10)/10,fix(D*10)/10);

