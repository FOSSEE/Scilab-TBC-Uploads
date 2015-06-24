//chapter7
// example 7.2
//page 259
R2=%s
R1=.86*R2
Vsat=%s
Rf=%s;
C=%s;
y=(Vsat-(R1*(-Vsat))/(R1+R2))/(Vsat-(R1*Vsat)/(R1+R2))
g=2.72;//g=y=5.0592/1.86
T=2*Rf*C*log(g)// Rf=C=%s
disp(T)// %s*%s=s same as 2*Rf*C=2s