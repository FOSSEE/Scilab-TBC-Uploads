// scilab Code Exa 12.2 Calculation on a centrifugal air compressor 
T01=288;  // in Kelvin
p01=1.02; //  Initial Pressure in bar
dh=0.10; // hub diameter in m
dt=0.25; // tip diameter in m
m=5; //  in kg/s
gamma=1.4;
n=(gamma-1)/gamma;
N=7.2e3; // rotor Speed in RPM
d2=0.45; // Impeller diameter in m
cp=1005; // Specific Heat at Constant Pressure in J/(kgK)
u2=%pi*d2*N/60;
pr0=((1+(u2^2/(cp*T01)))^(1/n));
disp(pr0,"pressure ratio developed pr0=")
w=u2^2;
disp("kW/(kg/s)",w*1e-3,"Power required to drive the compressor P=")
