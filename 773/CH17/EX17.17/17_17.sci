//function//
s=%s;
//Creating cont-time transfer function
TFcont=syslin('c',(8)/(s*(s+2)*(s+3))) 
SScont=tf2ss(TFcont)
//CCF form
[Ac,Bc,U,ind]=canon(SScont(2),SScont(3)) 
