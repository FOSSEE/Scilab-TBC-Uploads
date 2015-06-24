s=%s ;
//create state equation of the following matrix
TFcont=syslin ('c',(s+6)/(s^2+5*s+6))
SScont=tf2ss(TFcont )
[Ac ,Bc ,U, ind ]=canon( SScont ( 2 ) , SScont ( 3 ) )
disp(Ac,"MAtrix A=")
disp(Bc,"MAtrix B=")


