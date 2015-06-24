s=%s ;// convert to state space

TFcont=syslin ('c',20*(10*s+1)/(s^3+3*s^2+2*s+1))
SScont=tf2ss (TFcont )
[Ac ,Bc ,U, ind ]=canon( SScont( 2 ) , SScont( 3 ) )
