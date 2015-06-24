//AC Circuits : example 4.84 :(pg 4.67)
BW=400;
Vco=500;
R=100;
Vm=10;
V=(Vm/sqrt(2));
I0=V/R;
L=R/BW;
Q0=Vco/V;
C=(L/(Q0*R)^2);
f0=(1/(2*%pi*sqrt(L*C)));
f1=(f0-(R/(4*%pi*L)));//lower cut-off frequency
f2=(f0+(R/(4*%pi*L)));//upper cut-off frequency
printf("\nv(t)=10sinwt \nVco=5000V \nBW=400rad/s \nR=100 Ohm");
printf("\nV=%.2f V",V);
printf("\nI0=V/R=%.4f A",I0);
printf("\nBW=R/L \nL=%.2f H",L);
printf("\nQ0=Vco/V =%.2f",Q0);
printf("\nQ0=1/R*sqrt(L/C) \nC=%.e F",C);
printf("\nf0=1/2.pi.sqrt(LC)=%.2f Hz",f0);
printf("\nf1=f0-R/4.pi.L =%.2f Hz",f1);//lower cut-off frequency
printf("\nf2=f0+R/4.pi.L =%.2f Hz",f2); //upper cut-off frequency