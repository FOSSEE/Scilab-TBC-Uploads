// Example 1.3: Electron concentration, Hole concentration, Conductivity, Voltage
clc, clear
l=3e-3; // Length on Si sample in metres
a=5e-9; // Cross-sectional area of Si sample in metres square
ND=5e20; // Donor concentration in inverse metres cube
I=2e-6; // Current flowing through the bar in amperes
ni=1.45e16; // Intrinsic carrier concentration in inverse metres cube
mu_n=0.15; // Mobility of electrons in metres square per volt second
q=1.6e-19; // Charge on an electron in coulombs
n=ND; // Electron concentration in inverese metres cube
p=ni*ni/n; // Hole concentration in inverese metres cube
sigma=q*n*mu_n;  // Conductivity of Si sample in inverse ohm metres
V=(I*l)/(a*sigma); // Voltage across the bar in volts
n=n*1e-6; // Electron concentration in inverese centimetres cube
p=p*1e-6; // Hole concentration in inverese centimetres cube
sigma=sigma*0.01; // Conductivity of Si sample in inverse ohm centimetres
disp(n,"Electron concentration (cm^-3) = ");
disp(p,"Hole concentration (cm^-3) = ");
disp(sigma,"Conductivity of Si sample (ohm^-1 cm^-1) = ");
disp(V,"Voltage across the bar (V) = ");