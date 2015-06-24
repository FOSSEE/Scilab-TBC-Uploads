
//calculate the synchronous speed ,slip,frequncy induced emf
f=50
p=4
Ns=120*f/p
N=1460
s=(Ns-N)/Ns
f1=(s*f)
disp( 'f1='+string(f1)+'hz'  ,   's='+string(s)+' ' , 'Ns='+string(Ns)+'rpm'  )
