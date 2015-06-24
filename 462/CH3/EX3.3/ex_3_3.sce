//example 3.3//
clc
//clears the screen//
clear
//clears already existing varibales//
a=10;
//input voltage (in volts)//
b=.7;
//transistor voltage(saturation voltage)//
c=5;
//resistor b/w input voltage and the transistor//
d=10;
//input voltage from collector side//
e=0.1;
//transistor voltage(saturation voltage from collector side)//
f=2;
//resistor in kilo-ohm//
g=30;
h=-10;
//input voltage from emitter side//
I=(a-b)/c;
//base current of transistor from given figure//
disp('the base current of given circuit is (in mA):')
disp(I)
//base current is in mA//
K=(d-e)/f
//collector current of transistor from given figure//
disp('the collector current of given circuit is (in mA):')
disp(K)
//collector current in mA(saturation current)//
L=K/g
disp('base current required for the transistor to be in saturation is (in mA):')
disp(L)
//current in mA//
M=(h-b)/c
disp('the base current is (in mA):')
disp(M)
//base current in mA//