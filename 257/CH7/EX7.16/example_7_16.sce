q=poly([0 200 4 1],'s','coeff');
G=k/q //gain FACTOR=k
H=1
y=G*H //type 1

syms s
Kp=limit(s*y/s,s,0) //Kp= position error coefficient
Kv=limit(s*G*H,s,0) //Kv= velocity error coefficient
Ka=limit(s^2*G*H,s,0) //Ka= accelaration error coefficient

disp(Ka ,"Ka = ")
disp(Kv ,"Kv = ")
disp(Kp ,"Kp = ")

//for unit step input
A=1
Ess=A/(Kp + 1)
disp(Ess, "Ess for unit step input is ")

disp(A/Kv, "Ess for unit ramp input is ")




