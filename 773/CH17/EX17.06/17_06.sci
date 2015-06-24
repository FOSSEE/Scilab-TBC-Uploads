//function//
s=%s;
//Creating cont-time transfer function
TFcont=syslin('c',[(5*(s+1)*(s+2))/((s+4)*(s+5))]) 
SScont=tf2ss(TFcont)
 //CCF form
[Ac,Bc,U,ind]=canon(SScont(2),SScont(3))
