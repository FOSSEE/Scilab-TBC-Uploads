syms s

T1=12/((s+3)*(s+4));
T2=-3/(s+4);

L1=-24/((s+3)*(s+4)*(s+5));

delta=1-(L1)
del1=1;
del2=1;

T=(T1*del1 + T2*del2)/delta ;
disp(T,"T = ")

G=T/(1-T)
disp(G," G=")
H=1

Kp=limit(s*G*H/s,s,0) //Kp= position error coefficient
Kv=limit(s*G*H,s,0) //Kv= velocity error coefficient
disp(Kv ,"Kv = ")
disp(Kp ,"Kp = ")

Ess=1/(1+Kp)
disp(Ess, "Ess for step input is = ")
disp(" for ramp input e=infinity")






