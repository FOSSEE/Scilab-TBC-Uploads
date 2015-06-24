clc

//Simple cycle
p2=4; //bar
p1=1; //bar
T1=293;
n_compressor=0.8;
n_turbine=0.85;
ratio=90; //Air Fuel ratio
C=41800; //kJ/kg
cp=1.024;
p4=1.01; //bar
p3=3.9; //bar
y=1.4;
e=0.72; //thermal ratio

T2=T1*(p2/p1)^((y-1)/y);
T2a=(T2-T1)/n_compressor + T1;
T3=C/cp/(ratio+1)+471;
T4=T3*(p4/p3)^((y-1)/y);

T4a=T3-n_turbine*(T3-T4);

n_thermal1=((T3-T4a)-(T2a-T1))/(T3-T2a)*100;
disp("Thermal efficiency of simple cycle=")
disp(n_thermal1)
disp("%")


//Heat exchanger cycle

T2a=471; // K (as for simple cycle)
T3=919.5; // K (as for simple cycle)
p3=4.04-0.14-0.05; //bar
p4=1.01+0.05; //bar

T4=T3*(p4/p3)^((y-1)/y);
T4a=T3-n_turbine*(T3-T4);

T5=e*(T4a-T2a) + T2a;

n_thermal2=((T3-T4a) - (T2a-T1))/(T3-T5)*100;
disp("Thermal efficiency of heat exchanger cycle =")
disp(n_thermal2)
disp("%")

dn=n_thermal2-n_thermal1;
disp("Increase in thermal efficiency =")
disp(dn)
disp("%")