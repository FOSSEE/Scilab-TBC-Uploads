// Calculate the guaranteed values of the resistance
clc;
R1=100;
R1_le_perunit=0.5; // R1_le_perunit indicates dR1/R1 = 0.5%
R2=1000;
R2_le_perunit=0.5;
R3=842;
R3_le_perunit=0.5;
Rx=R2*R3/R1;
disp(Rx,'Value of resistance (ohm)=')
Rx_le_perunit=R1_le_perunit+R2_le_perunit+R3_le_perunit;

disp(Rx_le_perunit,'Limiting Value of resistance per unit (dRx/Rx)=')
Er_Le=Rx_le_perunit*Rx/100;
disp(Er_Le,'Limiting Value of resistance (ohm)=+/-')
disp('Guarantee value of the resistance (ohm)=')
G1=Rx+Er_Le;
G2=Rx-Er_Le;
disp(G1,G2,'')