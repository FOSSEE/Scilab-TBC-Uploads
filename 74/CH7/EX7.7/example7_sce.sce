//chapter 7
//example 7.7
// page 286,figure 7.42
R1=10000;R2=10000;
Vd1=.7;//diode drop
Vsat=12;//supply voltage
TP=2*10^-6;
C=.5*10^-9;
B=R1/(R1+R2)
//T=RCln((1+Vd1/Vsat)/(1-B))
k=((1+(Vd1/Vsat))/(1-B))
h=log(k)
R=TP/(C*h)