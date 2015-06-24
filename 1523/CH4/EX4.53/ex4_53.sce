//AC Circuits : example 4.53 :(pg 4.42)
C=35*10^-6;
f=50;
XC=(1/(2*%pi*f*C));
R=sqrt(3*(XC^2));
R^2=(3*(XC^2));
printf("\nC=35*10^-6 F \nf=50 Hz \nVC=1/2.V \nXC=1/(2*pi*f*C)=%.3f Ohm",XC);
printf("\nVC=1/2.V \nXC.I=1/2.Z.I \nXC=1/2.Z \nZ=2.XC \nZ=sqrt((R^2)+(XC^2)) \n(2XC)^2=(R^2)+(XC^2) \n3XC^2=R^2");
mprintf("\nR^2=3*XC^2=%.2f Ohm \nR=%.1f Ohm",R^2,R);
