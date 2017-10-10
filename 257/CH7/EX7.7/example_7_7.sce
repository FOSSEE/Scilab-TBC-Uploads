q=poly([0 0 6 5 1],'s','coeff');
G=1/q       //gain FACTOR=k
H=1
y=G*H       
disp(y)

syms s
Kp=limit(s*y/s,s,0) //Kp= position error coefficient
Kv=limit(s*G*H,s,0) //Kv= velocity error coefficient
Ka=limit(s^2*G*H,s,0) //Ka= accelaration error coefficient

disp(Ka ,"Ka = ")
disp(Kv ,"Kv = ")
disp(Kp ,"Kp = ")

Ess1=1/(1+Kp)
disp(Ess1, "Ess1 = ")
Ess2=10/(Kv)
disp(Ess2, "Ess2 = ")
Ess3=40/(Ka)
disp(Ess3, "Ess3 = ")

Ess=Ess1+Ess2+Ess3         //Ess=10     given
k=Ess/10
disp(k, "k = ")

