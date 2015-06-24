//Exa 7.4
clc;
clear;
close;
//given data
A=5;// in m^2
intensity=660;// in W/m^2

disp("alpha= 2*rho   or    rho=alpha/2")
disp("alpha= 3*toh   or    toh=alpha/3")
disp("as alpha + rho + toh =1")
disp("then alpha+alpha/2+alpha/3 = 1")
disp("alpha = 6/11")
disp("rho = 6/22")
disp("toh = 6/33")
alpha=6/11;
rho=6/22;
toh=6/33;
energy_absorbed= intensity*alpha*A;// in watt
disp(energy_absorbed, "Energy absorbed in watt : ")
energy_transmitted=intensity*rho*A;//in watt
disp(energy_transmitted,"Energy transmitted in watt :")
energy_emitted= intensity*toh*A;// in watt
disp(energy_emitted,"Energy emitted in watt: ")

