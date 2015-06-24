// Exa 3.4
clc;
clear;
close;
// Given data
Vd_1= 0.3;// in V
V_T= 25;// in mV
V_T= V_T*10^-3;// in V
// when Id_1= 1 mA
Id_1= 1;// in mA
Id_1=Id_1*10^-3;// in A
// Formula Id_1= Io*[%e^(Vd/(n*V_T))-1]= Io*[e^(Vd/(n*V_T))]
// Id_1= Io*[e^(Vd_1/(n*V_T))]            (i)

// when Id_2= 200 mA
Id_2= 200;// in mA
Id_2=Id_2*10^-3;// in A
Vd_2= 0.45;// in V
// Id_2= Io*[e^(Vd_2/(n*V_T))]            (ii)
// Dividing (ii) by (i), we have
n= (Vd_2-Vd_1)/(log(Id_2/Id_1)*V_T);
disp(n,"The value of the constant for the diode is ")
