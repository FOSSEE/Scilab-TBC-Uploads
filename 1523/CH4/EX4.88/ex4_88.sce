//AC Circuits : example 4.88 :(pg 4.72)
R=20;
C=100*10^-6;
L=0.2;
DR=(L/(C*R));
x=(1/(L*C));
y=((R/L)^2);
f0=((1/(2*%pi))*sqrt(x-y));
DR=(L/(C*R));
printf("\nR=20 Ohm \nL=0.2 H \nC=100uF");
printf("\nf0=1/2.pi.sqrt(1/LC-R^2/L^2) \n=%.2f Hz",f0);
printf("\n dynamic resistance =L/CR \n= %.f Ohm",DR);