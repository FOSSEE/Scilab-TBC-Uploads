//Ex6_6
clc
Av=1*10^(5)
disp("Av= "+string(Av)) //Voltage gain
VCC=(10)
disp("VCC= "+string(VCC)+" volts") // Collector voltage supply
vo=VCC
disp("vo= VCC="+string(vo)+" volts") // maximum output voltage
Vdmax=VCC/Av
disp("Vdmax= VCC/Av="+string(Vdmax)+" volts") // Difference input voltage at OP-amp terminals

