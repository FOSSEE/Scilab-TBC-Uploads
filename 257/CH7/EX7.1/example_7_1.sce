p=poly([2 1],'s','coeff');
q=poly([0 4 5 1],'s','coeff');
G=40*p/q //gain FACTOR=40
H=1
y=G*H //type 1

syms s
Kp=limit(s*y/s,s,0) //Kp= position error coefficient
Kv=limit(s*G*H,s,0) //Kv= velocity error coefficient
Ka=limit(s^2*G*H,s,0) //Ka= accelaration error coefficient

disp(Ka ,"Ka = ")
disp(Kv ,"Kv = ")
disp(Kp ,"Kp = ")

Ess=4/Kv
disp(Ess, "Ess = ")


