//function//
s=%s;
//Creating cont-time transfer function
TFcont=syslin('c',(6)/((s+2)^2*(s+1)))
SScont=tf2ss(TFcont)
//CCF form
[Ac,Bc,U,ind]=canon(SScont(2),SScont(3)) 
