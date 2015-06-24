//function//
s=%s;
//Creating cont-time transfer function
TFcont=syslin('c',((5*s^2)+(2*s)+6)/(s^3+(7*s^2)+(11*s)+8)) 
SScont=tf2ss(TFcont)
//CCF form
[Ac,Bc,U,ind]=canon(SScont(2),SScont(3)) 
