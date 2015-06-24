//clear//
//Example9.12:Inverse Lapalce Transform 
//X(S) = 1/(s+(1/2))   Re(s)> -1/2
s =%s ;
G =syslin('c',(1/(s+0.5)))
disp(G,"G( s )=")
plzr(G)
