//clear//
//Example9.8:Inverse Lapalce Transform 
//X(S) = 1/((s+1)(s+2))
s =%s ;
G =syslin('c',(1/((s+1)*(s+2)))) ;
disp(G,"G( s )=")
plzr(G)
x=denom(G) ;
disp(x,"Ch a r a c t e r i s t i c s Polynomial=" )
y = roots(x) ;
disp(y,"Poles of a system=" )
//Result
// -1 and -2
