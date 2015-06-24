


// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 6 Example # 6.5 ")

//Velocity in ft/s
U = 10;
//Outer diameter in inches
D = 1.5;
//Inner diameter in inches
d = 1;
//Temperature of water in degree F
Tw = 180;
//Temperature of wall in degree F
Twall = 100;

//The hydraulic diameter D for this geometry is 0.5 in.
D = 0.5;

//Using properties given in the table provided

//Reynolds number
Re = (((U*D)*3600)*60.8)/(12*0.75);
//Prandtl number
Pr = (1*0.75)/0.39;
//The Nusselt number according to the Dittus-Boelter correlation [Eq. (6.60)] 
Nu = (0.023*(125000^0.8))*(Pr^0.3);
printf('The Nusselt number according to the Dittus-Boelter correlation comes out to be %5.2f\n',Nu)

//Using the Sieder-Tate correlation [Eq. (6.61)]
//Nusselt number
Nu = 358;
printf('The Nusselt number according to the Sieder-Tate correlation comes out to be %5.2f\n',Nu)

//The Petukhov-Popov correlation [Eq. (6.63)] gives
//Friction factor
f = (1.82*log10(125000)-1.64)^(-2);
//K1 of Eq. 6.63
K1 = 1+3.4*f;
//K2 of Eq. 6.63
K2 = 11.7+1.8/(Pr^0.33);
//Nusselt number
Nu = 370;

//The Sleicher-Rouse correlation [Eq. (6.64)] yields
//a of Eq. 6.64
a = 0.852;
//b of Eq. 6.64
b = 1/3+0.5/exp(0.6*4.64);
//Reynolds number
Re = 82237;
//Nusselt number
Nu = 5+(0.015*(Re^a))*(4.64^b);
printf('Nusselt number according to The Sleicher-Rouse correlation comes out to be %5.2f\n',Nu)

disp("Assuming that the correct answer is  Nu=370")
disp("The first two correlations underpredict by about 10% and 3.5%, respectively")
disp("while the Sleicher-Rouse method overpredicts by about 10.5%.")
