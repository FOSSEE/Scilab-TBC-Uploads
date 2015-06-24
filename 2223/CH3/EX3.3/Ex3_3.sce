// scilab Code Exa 3.3 ideal reheat cycle gas turbine
T1=300;  // Minimum  cycle Temperature in Kelvin
r=25; // pressure ratio of the turbine and compressor
gamma=1.4;
T3=1500;  // Maximum cycle Temperature in Kelvin
cp=1.005; // Specific Heat at Constant Pressure in kJ/(kgK)
beeta=T3/T1;
n=(gamma-1)/gamma;
t=(r^n);
d=1/sqrt(t);
// part(a) Determining mass flow rate through the turbine and compressor
c=2*beeta*[1-d];
wp_max=cp*T1*(c+1-t);
m=1000/wp_max;
disp ("kg/s",m,"(a)mass flow rate through the turbine and compressor is")

// part(b) Determining thermal efficiency of the plant
n_th=(c+1-t)/(2*beeta-t-(beeta/sqrt(t)));
disp ("%",n_th*100,"(b)thermal efficiency of the plant is")    
