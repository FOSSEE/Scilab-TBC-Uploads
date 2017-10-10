p=poly([6 5 1],'s','coeff');
q=poly([0 20 29 10 1],'s','coeff');
G=10*p/q //gain FACTOR=10
H=1
y=G*H //type 1

syms s
Kp=limit(s*y/s,s,0) //Kp= position error coefficient
Kv=limit(s*G*H,s,0) //Kv= velocity error coefficient
Ka=limit(s^2*G*H,s,0) //Ka= accelaration error coefficient

disp(Ka ,"Ka = ")
disp(Kv ,"Kv = ")
disp(Kp ,"Kp = ")

Ess1=3/(1+Kp)
disp(Ess1, "Ess1 = ")
Ess2=1/(Kv)
disp(Ess2, "Ess2 = ")

disp("Ess3=2/(Ka) = infinity")

