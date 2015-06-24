//AC Circuits : example 4.79 :(pg 4.64)
R=10;
L=0.01;
C=100*10^-6;
f0=(1/(2*%pi*sqrt(L*C)));
BW=(R/(2*%pi*L));
f1=f0-(BW/2);
f2=f0+(BW/2);
printf("\nR=10 Ohm \nL=0.01H \nC=100uF");
printf("\nf0=1/2*pi*sqrt(L*C)=%.2f Hz",f0);//resonant frequency
printf("\nBW=R/2*pi*L =%.2f Hz",BW); //bandwidth
printf("\nf1=f0-BW/2 \n=%.2f Hz",f1); //lower frequency
printf("\nf2=f0+BW/2 =%.2f Hz",f2); //higher frequency