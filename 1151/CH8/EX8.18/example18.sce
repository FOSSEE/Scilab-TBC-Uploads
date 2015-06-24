s=%s ;// convert to state space

TFcont=syslin ('c',20*(4*s+2)/(s^3+5*s^2+8*s+2))
SScont=tf2ss (TFcont )
[Ac ,Bc ,U, ind ]=canon( SScont( 2 ) , SScont( 3 ) )
disp(Ac,"Matrix A=")
disp(Bc,"Matrix B=")
