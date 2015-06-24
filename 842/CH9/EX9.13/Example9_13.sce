//clear//
//Example9.13
//Inverse Lapalce Transform 
//X1(S) = 1/(s+1)   Re(s)> -1
//X2(S) = 1/((s+1)(s+2)) Re(s)>-1
s =%s ;
syms t ;
G1 =syslin('c',(1/(s+1)));
disp(G1,"G( s )=")
figure
plzr(G1)
G2 =syslin('c',(1/((s+1)*(s+2))));
disp(G2,"G( s )=")
figure
plzr(G2)
G3 = syslin('c',(1/(s+1))-(1/((s+1)*(s+2))));
disp(G3,"G( s )=")
figure
plzr(G3)
