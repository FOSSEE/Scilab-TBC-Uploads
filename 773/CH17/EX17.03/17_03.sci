//function//
s=%s;
//Creating cont-time transfer function
TFcont=syslin('c',3/(s^4+(2*s^3)+(3*s)+2)) 
SScont=tf2ss(TFcont)
//CCF form
[Ac,Bc,U,ind]=canon(SScont(2),SScont(3))