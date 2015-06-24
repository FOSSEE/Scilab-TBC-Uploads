//Example 8.2: The quantum efficiency,Maximum possible band gap energy and mean output
clc;
clear;
close;
//given data :
disp("part (a)")
format('v',5)
e=1;// electron
p=2;// photon
eta=(e/p)*100;
disp(eta,"The quantum efficiency,eta(%) = ")
disp("part (b)")
h=6.626*10^-34;//in Js
c=3*10^8;// in m s^-1
lamda_c=0.85*10^-6;// in m
Eg=((h*c)/lamda_c)/1.6*10^19;
disp(Eg,"Maximum possible band gap energy,Eg(eV) = ")
disp("part (c)")
e=1;// electron
p=2;// photon
eta=(e/p);
e=1.6*10^-19;// in J
h=6.626*10^-34;//in Js
c=3*10^8;// in m s^-1
lamda_c=0.85*10^-6;// in m
Eg=((h*c)/lamda_c);
P_in=10*10^-6;// in W
Ip=((eta*e*P_in)/Eg)*10^6;
disp(Ip,"The mean output,Ip(micro A) = ")

