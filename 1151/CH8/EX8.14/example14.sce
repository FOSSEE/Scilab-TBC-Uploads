s=%s ;//convert to state space 
K=1;
TFcont=syslin ('c',K/(s ^4+3*s^3+3*s^2+3*s+2))
SScont=tf2ss (TFcont )
[Ac ,Bc ,U, ind ]=canon( SScont( 2 ) , SScont( 3 ) )
disp(SScont)
