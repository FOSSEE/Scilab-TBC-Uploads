syms  s
G= 100/(s^2*(s+2)*(s+5))

syms s
Kp=limit(s*y/s,s,0) //Kp= position error coefficient
Kv=limit(s*G*H,s,0) //Kv= velocity error coefficient
Ka=limit(s^2*G*H,s,0) //Ka= accelaration error coefficient

disp(Ka ,"Ka = ")
disp(Kv ,"Kv = ")
disp(Kp ,"Kp = ")

Ess=1/(1+Kp) + (1/Kv) + (4/Ka)
disp(Ess, "Ess = ")

