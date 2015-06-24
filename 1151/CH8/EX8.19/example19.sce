s=%s ;// convert to state space

TFcont=syslin ('c',(s+2)/(s^3+3*s^2+2*s+10))
SScont=tf2ss (TFcont )
[Ac ,Bc ,U, ind ]=canon( SScont( 2 ) , SScont( 3 ) )
disp(Ac,"Matrix A=")
disp(Bc,"Matrix B=")
C=[2 1 0]
disp(C," Matrix Ct=")
