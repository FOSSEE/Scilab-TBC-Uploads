//Caption:Calculate (i)-Axial phase velocity ,(ii)-Anode voltage at which TWT can be operated for useful gain
//Exa:8.9
clc;
clear;
close;
e_m_ratio=1.759*10^11;//(e/m)
c=3*10^8;//in m/s
d=0.002;//diameter(in m)
pitch=(1/50)/100;//As,50 turns per cm (in m)
circum=%pi*d;
v_p=c*pitch/circum;
V_o=v_p^2/(2*e_m_ratio);
disp(v_p,'Axial phase velocity (in m/s) =');
disp(V_o,'Anode Voltage (in kV) =');

//Answer in book is wrongly given as V_o=25.92 V