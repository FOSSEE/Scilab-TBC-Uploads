s=%s ;
//create state equation of the following matrix
TFcont=syslin ('c',(s^2+3*s+3)/(s^3+2*s^2+3*s-1))
SScont=tf2ss(TFcont )
[Ac ,Bc ,U, ind ]=canon( SScont ( 2 ) , SScont ( 3 ) )
disp(Ac,"MAtrix A=")
disp(Bc,"MAtrix B=")
s=%s;
A =[0 0 1;1 0 -3;0 1 -2];
B =[3;3;1];
x =[0 0 1];
[r c]= size (A)
p=s*eye(r,c)-A // s*I-A
q=inv(p)
c=x*q*B;
disp(c,"required transfer function =")
