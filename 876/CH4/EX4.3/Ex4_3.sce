//caption:Find temperature at which thevenin voltage is 50mV
//Ex4.3
clc
clear
close
R=1000//resistance of all the arms ofwheatstone bridge(in ohm)
a=10//temperature coefficient of thermistor(in ohm/degree centigrate)
Eth=0.05//thevenin voltage(in V)
V=20//input voltage(in V)
T=50//temperature(in degree centigrate)
Ro=1000//resistance of thermometer(in ohm)
dR=(Eth*4*R)/V
To=T-1
disp(To,'temperature at which thevenin voltage is 50mV(in degree centigrate)=')