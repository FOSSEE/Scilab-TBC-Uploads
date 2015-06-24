clc
p1=20; //bar
t1=400; //0C
p2=4; //bar
t2=250; //0C
t0=20; //0C
T0=t0+273;
h1=3247.6; //kJ/kg
s1=7.127; //kJ/kg K

//let h2'=h2a and s2'=s2a
h2a=2964.3; //kJ/kg
s2a=7.379; //kJ/kg K

s2=s1;
s1a=s1;

//By interpolation, we get
h2=2840.8; //kJ/kg


disp("(i) Isentropic efficiency")
n_isen=(h1-h2a)/(h1-h2);
disp(" Isentropic efficiency =")
disp(n_isen)


disp("(ii) Loss of availability")
A=h1-h2a + T0*(s2a-s1a);
disp(" Loss of availability=")
disp(A)
disp("kJ/kg")


disp("(iii)Effectiveness")
Effectiveness=(h1-h2a)/A;
disp("Effectiveness =")
disp(Effectiveness)