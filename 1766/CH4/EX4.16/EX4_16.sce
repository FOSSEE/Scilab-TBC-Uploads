clc;funcprot(0);//EXAMPLE 4.16
// Initialisation of Variables
Ts=120;...........//Surface temperature in degree celsius
Ta=30;............//Atmospheric temperature in degree celsius
L=20;.............//Length of the plate in cm
W=15;..............//Width of the plate in cm
L1=500;.........//New length of the plate in cm
hr=9;............//Heat transfer co-efficient in W/m^2K
//Calculations
Tf=(Ts+Ta)/2;..........//Film temperature in degree Celsius
Gr=4.68*10^7;.....//Grashoff number at the film temperature for 20cm high plate
Pr=0.71;..........//Prandlt number at the film temperature for 20cm high plate
Ra=Gr*Pr;...........//Raleigh nu at the film temperature for 20cm high plate
Nu=35.9;...........//Nusselt no at the film temperature for 20cm high plate
K=0.029;...........//Thermal conductivity at the film temperature for 20cm high plate
hc = Nu*K/(L/100);........//Heat transfer co efficient for 20cm high plate
Q=2*(L/100)*(W/100)*(hc+hr)*(Ts-Ta);............//Heat transfer rate for 20 cm plate in W
disp(Q,"Heat transfer rate for 20 cm plate in W:")
Ra1=3.78*10^11;...........//Raleigh nu at the film temperature for 500 cm plate
Nu1=950;...........//Nusselt no at the film temperature for 500 cm plate
K1=0.029;...........//Thermal conductivity at the film temperature for 500 cm plate
hc1 = Nu1*K1/(L1/100);........//Heat transfer co efficient for 500 cm plate
Q1=2*(L1/100)*(W/100)*(hc1+hr)*(Ts-Ta);............//Heat transfer rate for 500 cm plate in W
disp(Q1,"Heat transfer rate for 20 cm plate in W:")

 

