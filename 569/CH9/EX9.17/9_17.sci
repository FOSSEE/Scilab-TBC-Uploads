// calculate the optimum setting
clc;
Aou=700*25*1/100;
Aol=100*25*1/100;
AouPtP= 2*Aou;
AolPtP= 2*Aol;
Se1=1;
D1=AouPtP/Se1;
disp(D1,'deflection of screen corresponding to maximum pressure for sensitivity of 1mV/mm (mm)')
disp('sinch the length of the screen is 100mm so waveform is out of range and hence sensitivity setting of 1mV/mm should not be used')
Se2=5;
D2=AouPtP/Se2;
disp(D2,'deflection of screen corresponding to maximum pressure for sensitivity of 5mV/mm (mm)')
disp('delection is within the range')
Se3=20;
D3=AouPtP/Se3;
disp(D3,'deflection of screen corresponding to maximum pressure for sensitivity of 20mV/mm (mm)')
disp('delection is within the range')
Se4=100;
D4=AouPtP/Se4;
disp(D4,'deflection of screen corresponding to maximum pressure for sensitivity of 100mV/mm (mm)')
disp('delection is within the range')
Se5=500;
D5=AouPtP/Se5;
disp(D5,'deflection of screen corresponding to maximum pressure for sensitivity of 500mV/mm (mm)')
disp('delection is within the range')
disp('since the sensitivity of 5mV/mm gives higher deflection so it is the optimum sensitivity')