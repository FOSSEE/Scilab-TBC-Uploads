clc;
// page no 211
// prob no 6.6.1
//In given problem zero bias capacitance co is 20pF
Co=20;// in pF
Vd=-7;// reverse bias voltage in volt
//constant pottential of junction is 0.5
a=0.5;// for abrupt junction
Cd=Co/(1-(Vd/0.5))^a;
disp('pF',Cd,+'The value of capacitor is ');