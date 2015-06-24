//example 4.1.a(ii)//
clc
//clears the screen//
clear
//clears already existing variables//
//for DTL NAND gate calculate fan out//
disp('case II , if atleast one of the inputs is LOW')
v=0.2+0.7;
m=0.6+0.6+0.5;
//min voltage for both diodes and transistor to be conducting//
disp(v)
disp('min voltage for both diodes and transistor to be conducting:')
disp(m)
if(v<m)
disp('transistor is in cut off mode')
disp('if the load gates are connected, the input diodes of the load gates are non conducting, which means the reverse saturation current of these diodes must be supplied through the collector resistor R(c), which will produce a voltage drop across R(c) and consequently the output voltage corresponding to HIGH state will be a little less than V(cc). The maximum current which can be supplied by the gate will depend upon V(OH). The fan out is determined on the basis of maximum current.')
end