clc
T1=288; //K
p1=1.01; //bar
rp=7;
p2=rp*p1;
p3=p2;
p5=p1;
n_compressor=0.82;
n_turbine=0.85;
n_turbine=0.85;
T3=883; //K
cpa=1.005;
cpg=1.15;
y1=1.4;
y2=1.33;

disp("(i) Pressure and temperature of the gases entering the power turbine =")

T2=T1*rp^((y1-1)/y1);
T2a=(T2-T1)/n_compressor + T1;

W_compressor=cpa*(T2a-T1);

T4a=(cpg*T3-W_compressor)/cpg;
disp("Temperature of gases entering the power turbine =")
disp(T4a)
disp("K")

T4=T3-(T3-T4a)/n_turbine;

p4=p3/(T3/T4)^(y2/(y2-1));
disp("Pressure of gases entering the power turbine =")
disp(p4)
disp("bar")


disp("(ii) Net power developed per kg/s mass flow")
T5=T4a/(p4/p5)^((y2-1)/y2);
T5a=T4a-n_turbine*(T4a-T5);

W_turbine=cpg*(T4a-T5a);
disp(" Net power developed per kg/s mass flow =")
disp(W_turbine)
disp("kW")


disp("(iii) Work ratio =")
W_ratio=W_turbine/(W_turbine+W_compressor);
disp(W_ratio)


disp("(iv) Thermal efficiency of the unit")
Qs=cpg*(T3-T2a);
n_thermal=W_turbine/Qs*100;
disp("n_thermal =")
disp(n_thermal)
disp("%")