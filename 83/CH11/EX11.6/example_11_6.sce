//Chapter 11
//Example 11.6
//page 420
//To find bus voltages and currents

clc;clear;
v_pf=1; //prefault voltage
//according to the fig.11.26
Y1dd=((%i*0.2)^-1)+((%i*0.0805)^-1);
Y1fg=-(%i*0.0805)^-1;
Y1de=Y1fg;
Y1ff=((%i*0.0805)^-1)+((%i*0.164)^-1);
Y1ee=Y1ff;
Y1ef=-(%i*0.164)^-1;
Y1gg=((%i*0.0805)^-1)+((%i*0.345)^-1)+((%i*0.69)^-1);
Y1df=0;
Y1dg=0;
Y1ed=Y1de;
Y1eg=0;
Y1fd=0;
Y1fe=Y1ef;
Y1gd=0;
Y1ge=0;
Y1gf=Y1fg;
printf('\nY-Bus and Z-Bus matrix can be written as:\n')
Y1_bus=[Y1dd Y1de Y1df Y1dg;Y1ed Y1ee Y1ef Y1eg;Y1fd Y1fe Y1ff Y1fg;Y1gd Y1ge Y1gf Y1gg];
Y2_bus=Y1_bus;
printf('\nY1_bus=');disp(Y1_bus);
printf('\nY2_bus=');disp(Y2_bus);
Y0dd=(%i*1.608)^-1;Y0de=0;Y0df=0;Y0dg=0;
Y0ed=0;Y0ee=((%i*0.0805)^-1)+((%i*0.494)^-1);Y0ef=-(%i*0.494)^-1;Y0eg=0;
Y0fd=0;Y0fe=Y0ef;Y0ff=Y0ee;Y0fg=0;
Y0gd=0;Y0de=0;Y0gf=0;Y0gg=(%i*1.712)^-1;

Y0_bus=[Y0dd Y0de Y0df Y0dg;Y0ed Y0ee Y0ef Y0eg;Y0fd Y0fe Y0ff Y0fg;Y0gd Y0de Y0gf Y0gg];
printf('\nY0_bus=');disp(Y0_bus);

//finding Z-bus matrix
Z1_bus=inv(Y1_bus);
Z2_bus=inv(Y2_bus);
Z0_bus=inv(Y0_bus);
printf('\n\nZ1bus=');disp(Z1_bus);
printf('\nZ2_bus=');disp(Z2_bus);
printf('\nZ0_bus=');disp(Z0_bus);

//to find fault current with LG fault on bus e ---case(i)
If_e=(3*v_pf)/(Z1_bus(2,2)+Z2_bus(2,2)+Z0_bus(2,2));
printf('\n\n\nFault current with LG fault on bus e is If_e= -j%0.5f\n',abs(imag(If_e)));

//to find fault current with LG fault on bus f ---case(ii)
If_f=(3*v_pf)/(Z1_bus(3,3)+Z2_bus(3,3)+Z0_bus(3,3));
printf('Fault current with LG fault on bus f is If_f= -j%0.5f\n',abs(imag(If_f)));

//to find bus voltages and line currents in case(i)
printf('\n\n\nBus voltages and currents are given below:\n\n');
Vf1_d=1-(Z1_bus(1,2)*If_e/3);
Vf1_e=1-(Z1_bus(2,2)*If_e/3);
Vf1_f=1-(Z1_bus(3,2)*If_e/3);
Vf1_g=1-(Z1_bus(4,2)*If_e/3);
disp('Vf1_d=');disp(Vf1_d);
disp('Vf1_e=');disp(Vf1_e);
disp('Vf1_f=');disp(Vf1_f);
disp('Vf1_g=');disp(Vf1_g);

printf('\n\n\n');
Vf2_d=-(Z2_bus(1,2)*If_e/3);
Vf2_e=-(Z2_bus(2,2)*If_e/3);
Vf2_f=-(Z2_bus(3,2)*If_e/3);
Vf2_g=-(Z2_bus(4,2)*If_e/3);
disp('Vf2_d=');disp(Vf2_d);
disp('Vf2_e=');disp(Vf2_e);
disp('Vf2_f=');disp(Vf2_f);
disp('Vf2_g=');disp(Vf2_g);

printf('\n\n\n');
Vf0_d=-(Z0_bus(1,2)*If_e/3);
Vf0_e=-(Z0_bus(2,2)*If_e/3);
Vf0_f=-(Z0_bus(3,2)*If_e/3);
Vf0_g=-(Z0_bus(4,2)*If_e/3);
disp('Vf0_d=');disp(Vf0_d);
disp('Vf0_e=');disp(Vf0_e);
disp('Vf0_f=');disp(Vf0_f);
disp('Vf0_g=');disp(Vf0_g);

printf('\n\n\n');
If1_fe=-Y1fe*(Vf1_f-Vf1_e);disp('If1_fe=');disp(If1_fe);
If1_de=-Y1de*(Vf1_d-Vf1_e);disp('If1_de=');disp(If1_de);
Ia1=If1_fe+If1_de;disp('Ia1=');disp(Ia1);

printf('\n\n\n');
If1_gf=-Y1gf*(Vf2_g-Vf2_f);disp('If1_gf=');disp(If1_gf);

printf('\n\n\n');
If2_fe=-Y1fe*(Vf2_f-Vf2_e);disp('If2_fe=');disp(If2_fe); //Y2fe=Y1fe
If0_fe=-Y0fe*(Vf2_f-Vf2_e);disp('If0_fe=');disp(If0_fe);
If_fe=If1_fe+If2_fe+If0_fe;disp('If_fe=');disp(If_fe);



