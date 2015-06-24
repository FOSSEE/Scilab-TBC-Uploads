clear;
clc;
Zin=36;Zt=500;f=40;x=0.97
Zo=sqrt(Zin*Zt);
A=10^(Zo/276);
lo=300/f;
l1=lo*x/4;
printf("-The characteristic impedance of the transmission line = %f ohms\n",round(Zo));
printf("-The spacing between the conductors shud be %f times the radius of the conductor\n",round(A));
printf("-The length of the quarter wavelength transformer must be %f metres",round(l1*100)/100);
