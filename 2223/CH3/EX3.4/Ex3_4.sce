// scilab Code Exa 3.4 Calculations on Gas Turbine Plant for an ideal reheat cycle with optimum reheat pressure and perfect exhaust heat exchange
T1=300;  // Minimum  cycle Temperature in Kelvin
r=25; // pressure ratio of the turbine and compressor
T3=1500;  // Maximum cycle Temperature in Kelvin
gamma=1.4; // Specific Heat Ratio
cp=1.005; // Specific Heat at Constant Pressure in kJ/(kgK)
beeta=T3/T1;
n=(gamma-1)/gamma;
t=(r^n);
d=1/sqrt(t);
// part(a) Determining mass flow rate through the turbine and compressor
c=2*beeta*[1-d];
wp_max=cp*T1*(c+1-t);
m=1000/wp_max;
disp ("kg/s" ,m," mass flow rate through the turbine and compressor is")


// part(b) Determining thermal efficiency of the plant
c=sqrt(t)*(sqrt(t)+1)/(2*beeta);
n_th=1-c;
disp ("%",n_th*100," thermal efficiency of the plant is")    
