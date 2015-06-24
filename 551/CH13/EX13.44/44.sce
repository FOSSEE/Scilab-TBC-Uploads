clc
m_a=20; //kg/s
T1=300; //K
T3=1000; //K
rp=4; //rp=p2/p1
cp=1; //kJ/kg K
y=1.4;

T2=T1*(rp)^((y-1)/y);
T4=T3-T2+T1;

//p5/p4=(p5/p3)*(p3/p4)
//let p3/p4=r1
r1=(T3/T4)^(y/(y-1));

//r2=p5/p4;
r2=1/4*r1;
P_ratio=1/r2; //Pressure ratio of low pressure turbine
disp("Pressure ratio of low pressure turbine =")
disp(P_ratio)

T5=T4/(P_ratio)^((y-1)/y);
disp("Temperature of the exhaust from the unit =")
disp(T5)
disp("K")