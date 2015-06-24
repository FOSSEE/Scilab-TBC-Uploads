//Ex12_4
clc
VI=-15
disp("VI= "+string(VI)+" volts") //  Input voltage
TSW=2*10^(-3)
disp("TSW= "+string(TSW)+" seconds")// triangular wave Sweep time
R=10*10^(3)
disp("R= "+string(R)+ " ohm")  // resistance as ckt. parameter
C=0.5*10^(-6)
disp("C= "+string(C)+" farad") //  capacitance as ckt. parameter
S=-VI/(R*C)
disp("Sweep rate=VI/(R*C)="+string(S)+ " V/s") // Sweep rate for sweep generator
VSW=TSW*S
disp("VSW=TSW*S= "+string(VSW)+" volts") //   Sweep voltage amplitude


// note in book author has not provided any variable for sweep rate ... but here I have used 'S' for it .
