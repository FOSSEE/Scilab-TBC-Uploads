//clc()
T = [273 373 473 573 673 773 873 973 1073 1173 1273];
Cp = [33.6 35.1 36 36.6 37 37.3 37.5 37.6 37.7 37.8 37.9];
plot2d(T,Cp,rect=[273,33,1273,38])
xtitle(" T vs Cp","Temperature K","Heat Capacity, kJ/kmolK")
// at constant Pressure, H = integration(Cp,T,T1,T2)
//Area under the curve form the graph ,is obtained as Area = 36828
H = 36828;//kJ/kmol
disp("kJ/kmol",H,"Enthalpy change = ")