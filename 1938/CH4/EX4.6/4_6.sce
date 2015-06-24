clc,clear
printf('Example 4.6\n\n')

d=0.25            //Diameter in metre
l=0.3             //Length in metre
Pole=4
A1=%pi*d*l/Pole    //Area of each fundamental pole
f=50 //frequency in hertz
B_m1=0.15 , B_m3=0.03, B_m5=0.02 //Amplitude of 1st, 3rd and 5th harmonics
phi_1=(2/%pi)*B_m1*A1  //average value of fundamental flux per pole in weber

//PART A
E_c1=1.11*2*f*phi_1  //R.M.S value of fundamental frequency e.m.f generated in single conductor
Coil_span=(13/15)*180  //since winding coil span is 13/15 of pole pitch
alpha=180-Coil_span

//Pitch factor for 1st, 3rd and 5th harmonic
K_c1=cosd(alpha/2)
K_c3=cosd(3*alpha/2)
K_c5=cosd(5*alpha/2)

//Using E_cx=E_c1 * (B_mx/B_m1)
E_c3=E_c1 * (B_m3/B_m1)
E_c5=E_c1 * (B_m5/B_m1)

E_t1=K_c1 * (2*E_c1)   //R.M.S Vaue of fundamental frequency EMF generated in 1 turn (in volts)
E_t3=K_c3 * 2*E_c3
E_t5=K_c5 * 2*E_c5
E_t=sqrt(E_t1^2 +E_t3^2 +E_t5^2)
V=10*E_t  //(number of turns per coil )* (Total e.m.f per turn)
printf('Voltage generated per coil is %.1f V',V)

// PART B
//E_1ph=4.44*K_c1*K_d1*phi_1*f*T_ph
T_ph=200   //T_ph=(60 coils  * 10 turns per coil)/3

Total_Conductors=1200 // 60 coils * 10 turns per coil * 2
Conductors_per_Slot=20 //2 conductors per turn * 10  turns per slot
Slots=Total_Conductors/Conductors_per_Slot

n=Slots/Pole
m=n/3
beeta=180/n   //Slot angle in degree
K_d1=sind(m*1*beeta/2) /(m*sind(1*beeta/2))
K_d3=sind(m*3*beeta/2) /(m*sind(3*beeta/2))
K_d5=sind(m*5*beeta/2) /(m*sind(5*beeta/2))

E_1ph=4.44 * K_c1 * K_d1*phi_1 * f * T_ph
// Using E_xph= E_1ph* (B_mx*K_cx*K_dx)/(B_m1*K_c1*K_d1)
E_3ph= E_1ph* (B_m3*K_c3*K_d3)/(B_m1*K_c1*K_d1)
E_5ph= E_1ph* (B_m5*K_c5*K_d5)/(B_m1*K_c1*K_d1)
E_ph=sqrt( E_1ph^2 + E_3ph^2 + E_5ph^2 )  //voltage generated per phase
printf('\nVoltage generated per phase is %.0f V',E_ph)

 //PART c
E_line=sqrt(3) * sqrt( E_1ph^2 + E_5ph^2  ) //terminal voltage
printf('\nTerminal Voltage is %.1f V ',E_line)
