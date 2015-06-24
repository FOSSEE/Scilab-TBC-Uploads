//AC Circuits : example 4.58 :(pg 4.46)
R=20;
phi=45;
Z=R/cosd(phi);
XC=sqrt((Z^2)-(R^2));
XL=(2*XC);
w=1000;
L=(XL/w);
C=(1/(w*XC));
printf("\nvL=300sin(1000t) \nR=20 Ohm \nphi=45 \nVL(max)=2Vcc(max) \nsqrt(2)*VL=2*sqrt(2)*VC \nI*XL=2*I*XC \nXL=2*XC \ncos(phi)=R/Z");
printf("\nZ=%.2f Ohm",Z);
printf("\nZ=sqrt((R^2)+(XL-XC)^2) \nXC=%.f Ohm",XC); //for series R-L-C ckt
printf("\nXL=2*XC =%.f Ohm",XL);
printf("\nXL=w*L \nL=%.2f H",L);
printf("\nXC=1/w*C \nC=%.e F",C);
