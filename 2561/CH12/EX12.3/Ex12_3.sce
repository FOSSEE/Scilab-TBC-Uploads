//Ex12_3
clc
Vo=14
disp("Vo= "+string(Vo)+" volts") //  output voltage
f=500 
disp("f = "+string(f)+" Hz")//frequency
R2=10*10^(3)
disp("R2= "+string(R2)+ " ohm")  // resistance
VTW=14
disp("VTW= "+string(VTW)+" volts") // Triangular peak-peak output voltage
T=1/f
C2=(Vo*T)/(2*VTW*R2)
disp("C2=(Vo*T)/(2*VTW*R2)= "+string(C2)+" farad") // calculated capacitance value for deriving triangular wave from square wave astable multivibrator
