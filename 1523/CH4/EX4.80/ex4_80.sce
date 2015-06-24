//AC Circuits : example 4.80 :(pg 4.65)
R=10;
L=0.2;
C=40*10^-6;
V=100;
f0=(1/(2*%pi*sqrt(L*C)));
I0=(V/R);
P0=((I0^2)*R);
pf=1;
Vr=(R*I0);
Vl=((2*%pi*f0*L)*I0);
Vc=((1/(2*%pi*f0*C))*I0);
Q=((1/R)*sqrt(L/C));
f1=(f0-(R/(4*%pi*L)));
f2=(f0+(R/(4*%pi*L)));
printf("\nR=10 Ohm \nL=0.2 H \nC=40uF \nV=100 V");
printf("\n(i) f0= 1/2*pi*sqrt(LC) =%.1f Hz",f0); //resonant frequency
printf("\n(ii) I0= V/R =%.f A",I0); //current
printf("\n(iii) P0=(I0^2)*R =%.f W",P0);//power
printf("\n(iv) pf=1");//power factor
printf("\n(v) Rv = R.I =%.f V",Vr);//voltage across resistor
printf("\n Lv = XL.I =%.1f V",Vl);//voltage across inductor
printf("\n Cv = XC.I =%.1f V",Vc); //voltage across capacitor
printf("\n(vi) Q =1/R*sqrt(L/C)=%.2f",Q);//Quality factor
printf("\n(vii)f1 = f0-R/4.pi.L = %.2f Hz",f1); //half power points
printf("\nf2=f0+R/4.pi.L = %.1f Hz",f2);
// x initialisation 
x=[-1:0.1:2*%pi];
//simple plot
plot(sin(x))



