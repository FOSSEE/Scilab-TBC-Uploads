syms s;
G=k/((s+2)*s*(s^2+2*s+5))
H=1;

Kv=limit(s*G*H,s,0) //Kv= velocity error coefficient
A=1                    //magnitude of unit ramp
Ess=A/Kv
disp("Ess is less than 0.2 ")                    //10/k < 0.2
disp("k lies between 50 and infinity")

Kp=limit(s*y/s,s,0) //Kp= position error coefficient
Ka=limit(s^2*G*H,s,0) //Ka= accelaration error coefficient

disp(Ka ,"Ka = ")
disp(Kv ,"Kv = ")
disp(Kp ,"Kp = ")

Ess1=2/(1+Kp)
disp(Ess1, "Ess1 = ")
Ess2=4/(Kv)
disp(Ess2, "Ess2 = ")
//Ess3=1/(Ka)
//disp(Ess3, "Ess3 = ")

disp(" e =Ess1+Ess2+Ess3 = infinity")



