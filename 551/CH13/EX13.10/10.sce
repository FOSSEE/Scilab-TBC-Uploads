clc
r=6; //v1/v2=v4/v3=r
p1=1; //bar
T1=300; //K
T3=1842; //K
y=1.4;

disp("(i) Temperature and pressure after the isentropic expansion")
p2=p1*(r)^y;
T2=T1*r^(y-1);
p3=p2*(T3/T2);

T4=T3/r^(y-1);
disp("T4=")
disp(T4)
disp("K")

p4=p3/(r)^(y);
disp("p4 =")
disp(p4)
disp("bar")

disp("(ii) Process required to complete the cycle")

disp("Process required to complete the cycle is the constant pressure scavenging. The cycle is called Atkinson cycle")

disp("(iii) Percentage improvement/increase in efficiency")
p5=1; //bar
T5=T3*(p5/p3)^((y-1)/y);

n_otto=(1-1/r^(y-1))*100;
disp("n_otto = ")
disp(n_otto)
disp("%")

n_atkinson=(1-y*(T5-T1)/(T3-T2))*100;
disp("n_atkinson=")
disp(n_atkinson)
disp("%")

dn=n_atkinson - n_otto; //Improvement in efficiency
disp("Improvement in efficiency =")
disp(dn)
disp("%")