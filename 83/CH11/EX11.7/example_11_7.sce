//Chapter 11
//Example 11.7
//page 423
//To find short circuit currents

clc;clear;
v_pf=1; //prefault voltage
a=0.5+0.8660254*%i;
//according to the fig.11.28 we can write Z-bus matrix for positive and negative phase sequence
printf('\nstep by step for finding Z1_bus\n')

//Bus1 to referance bus
Z1_bus=[0.15];
printf('Bus1 to reference\nZ1_bus=');disp(Z1_bus);

//Bus2 to Bus1
Z1_bus=[Z1_bus 0.15;0.15 0.15+0.2];
printf('\nBus2 to Bus1\nZ1_bus=');disp(Z1_bus);

//Bus2 to reference bus
Z1_bus=Z1_bus-(1/(Z1_bus(2,2)+0.15))*[Z1_bus(1:2,2:2)]*[Z1_bus(2:2,1:2)];
Z1_bus=(%i*Z1_bus);
Z2_bus=Z1_bus;
printf('\nBus2 to Reference\nZ1_bus=');disp(Z1_bus);printf('\nZ2_bus=');disp(Z2_bus);

//according to the fig.11.29 we can write Z-bus matrix for zero phase sequence
printf('\nstep by step for finding Z0_bus\n')
//Bus1 to referance bus
Z0_bus=[0.05];
printf('\nBus1 to reference \nZ0_bus=');disp(Z0_bus);

//Bus2 to Bus1
Z0_bus=[Z0_bus 0.05;0.05 0.05+0.4];
printf('\nBus1 to Bus1 \nZ0_bus=');disp(Z0_bus);

//Bus2 to reference bus
Z0_bus=Z0_bus-(1/(Z0_bus(2,2)+0.05))*[Z0_bus(1:2,2:2)]*[Z0_bus(2:2,1:2)];
Z0_bus=(%i*Z0_bus);
printf('\nBus2 to reference \nZ0_bus=');disp(Z0_bus);

//to find positive sequence of fault current
printf('\n\n\nFault current calculation\n')
If1_1=v_pf/(Z1_bus(1,1)+Z2_bus(1,1)+Z0_bus(1,1)); printf('If1_1 = -j%0.5f',abs(imag(If1_1)));
printf('\nFault current=If1=3If1_1=-j%0.1f\n\n',abs(imag(3*If1_1)));

Vf1_1=1-Z1_bus(1,1)*If1_1;
Vf1_2=1-Z1_bus(2,1)*If1_1;

Vf2_1=-Z2_bus(1,1)*If1_1;
Vf2_2=-Z2_bus(2,1)*If1_1;

Vf0_1=-Z0_bus(1,1)*If1_1;
Vf0_2=-Z0_bus(2,1)*If1_1;

If1_12=((%i*0.2)^-1)*(Vf1_1-Vf1_2);
If2_12=((%i*0.2)^-1)*(Vf2_1-Vf2_2);
If0_12=((%i*0.4)^-1)*(Vf0_1-Vf0_2);

If=[1 1 1;a^2 a 1;a a^2 1]*[If1_12;If2_12;If0_12];

printf('\n\n\nShort circuit current on the transmission line in all the three phases\n')
printf('\nIf_a_12=');
disp(If(1,1));

printf('\nIf_b_12=');
disp(If(2,1));

printf('\nIf_b_12=');
disp(If(3,1));

//short circuit current phase(a) of the generator
If1_G=((0.15*%i)^-1)*(1-Vf1_1)*(cosd(-30)+%i*sind(-30));
If2_G=((0.15*%i)^-1)*(0-Vf2_1)*(cosd(30)+%i*sind(30));
If0_G=0;
printf('\n\n\nshort circuit current phase(a) of the generator\n')
Ifa_G=If1_G+If2_G+If0_G; printf('Ifa_G = -j%0.5f',abs(imag(Ifa_G)));

//Voltage of the healthy phases of the bus 1.
printf('\n\n\nVoltage of the healthy phases of the bus 1\n')
Vf_b_1=Vf1_1*(cosd(240)+%i*sind(240))+Vf2_1*(cosd(120)+%i*sind(120))+Vf0_1; printf('Vf_b_1=%0.4f - j%0.5f',real(Vf_b_1),abs(imag(Vf_b_1)));
Vf_c_1=Vf1_1*(cosd(120)+%i*sind(120))+Vf2_1*(cosd(240)+%i*sind(240))+Vf0_1; printf('\nVf_c_1=%0.4f + j%0.5f',real(Vf_c_1),abs(imag(Vf_c_1)));
