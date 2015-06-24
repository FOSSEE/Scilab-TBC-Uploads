//coefficient//
s = poly ( 0,'s' )
sys1 = syslin ('c',(s)/(s+6));
sys2 = syslin ('c',(s+2)/(s+3));
sys3 = syslin ('c',(5)/((s+3)*s^3));
a=sys2+sys3;
disp(a,"H(s)")
b=sys1;
disp(b,"G(S)")
y=a*b;
disp(y,"G(S)H(S)")
syms s
Kp=limit(s*y/s,s,0) //Kp= position error coefficient
Kv=limit(s*y,s,0) //Kv= velocity error coefficient
Ka=limit(s^2*y,s,0) //Ka= accelaration error coefficient
