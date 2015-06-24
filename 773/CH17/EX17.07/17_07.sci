//function//
s=%s;
//Creating cont-time transfer function
TFcont=syslin('c',(s+1)/((s+2)*(s+5)*(s+3))) 
SScont=tf2ss(TFcont)
//CCF form
[Ac,Bc,U,ind]=canon(SScont(2),SScont(3))
