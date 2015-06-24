clc
T1=288; //K
T3=883; //K
rp=6; //rp=p2/p1
n_compressor=0.80;
n_turbine=0.82;
m_a=16; //kg/s
cp1=1.005; //kJ/kg K, For compression process
y1=1.4; // For compression process
cp2=1.11; //kJ/kg K
y2=1.333;

T2=T1*(rp)^((y1-1)/y1);
T2a=(T2-T1)/n_compressor + T1;
T4=T3/rp^((y2-1)/y2);
T4a=T3-n_turbine*(T3-T4);

W_compressor=cp1*(T2a-T1);
W_turbine=cp2*(T3-T4a);
W_net=W_turbine-W_compressor;

Power=m_a*W_net;
disp("Power =")
disp(Power)
disp("kW")