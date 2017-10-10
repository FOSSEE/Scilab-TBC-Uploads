syms s

G=10/(s^2*(s^2+s+10))
H=s;
T=G/(1+G*H)

Kp=limit(s*T/s,s,0) //Kp= position error coefficient
Kv=limit(s*T,s,0) //Kv= velocity error coefficient
Ka=limit(s^2*T,s,0) //Ka= accelaration error coefficient

disp(Ka ,"Ka = ")
disp(Kv ,"Kv = ")
disp(Kp ,"Kp = ")

R=10/s
T1=T/(1+T)
C=R*T1;
Css=limit(s*C,s,0)
disp(Css," Css = ")