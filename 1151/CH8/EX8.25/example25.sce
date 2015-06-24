s=%s ;
//create state equation of the following matrix
TFcont=syslin ('c',(1+0.5*s)/(s^2+2*s+0.5) )
SScont=tf2ss(TFcont )
[Ac ,Bc ,U, ind ]=canon( SScont ( 2 ) , SScont ( 3 ) )
disp(Ac,"MAtrix A=")
disp(Bc,"MAtrix B=")
