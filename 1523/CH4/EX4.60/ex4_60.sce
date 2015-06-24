//AC Circuits : example 4.60 :(pg 4.48)
f=50;
V=250;
R=5;
L=9.55;
Vcoil=300;
XL=2*%pi*f*L;
Zcoil=(sqrt((R^2)+(XL^2)));
I=Vcoil/Zcoil;
Z=V/I;
XC1=Zcoil-Z;
XC2=Zcoil+Z;
C1=(1/(2*%pi*f*XC1));
C2=(1/(2*%pi*f*XC2));
printf("\nV=250 V \nR=5 Ohm \nL=9.55 H \nVcoil=300 V");
printf("\nXL=2*pi*f*L =%.f Ohm",XL);
printf("\nZcoil=sqrt(R^2)+(XL^2) =%.f Ohm",Zcoil);
printf("\nI=Vcoil/Zcoil =%.1f A",I);
printf("\nZ=V/I =%.f Ohm",Z);//total impedance
printf("\nZ=sqrt((R^2)+(XL-XC)^2) \nXC=%.f Ohm",XC1);//when XL>XC
printf("\nC=1/2*pi*f*XC =%.e F",C1);
printf("\nZ=sqrt((R^2)+(XC-XL)^2) \nXC=%.f Ohm",XC2);//when XC>XL
printf("\nC=%.e F",C2);
