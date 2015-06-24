clc,clear
printf('Example 4.17\n\n')

Pole=6
Ns=1000 //speed in rpm
d=28/100  //Divided by 100 to convert from centimeters to metres
l=23/100  //Divided by 100 to convert from centimeters to metres
m=4 //slots per pole per phase
B_m1=0.87  //amplitude of 1st harmonic component of flux density
B_m3=0.24  //amplitude of 3rd harmonic component of flux density
Conductors_per_slot=8
f=Ns*Pole/120 //frequency
A1=%pi*d*l/Pole //area of each fundamental pole
phi_1=(2/%pi)*A1*B_m1 //flux per pole in weber
n=m*3 //slots per pole
beeta=180/n //slot angle
alpha=beeta  //because of 1 slot short
K_c1=cosd(alpha/2) //coil span factor corresponding to 1st harmonic
K_c3=cosd(3*alpha/2)//coil span factor corresponding to 3rd harmonic
// using K_dx=sin(m*x*beeta*(%pi/180)/2) /(m*sin(x*beeta*(%pi/180)/2))
K_d1=sind(m*1*beeta/2) /(m*sind(1*beeta/2)) //distribution factor corresponding to 1st harmonic
K_d3=sind(m*3*beeta/2) /(m*sind(3*beeta/2)) //distribution factor corresponding to 3rd harmonic

Slots=n*Pole
Z=Slots*Conductors_per_slot //total number of conductors
Z_ph=Z/3 //conductors per phase
T_ph=Z_ph/2 //turns per phase

E_1ph=4.44*K_c1*K_d1*phi_1*f*T_ph
E_3ph=E_1ph* (B_m3*K_c3*K_d3)/(B_m1*K_c1*K_d1)      //using E_xph=E_1ph* (B_mx*K_cx*K_dx)/(B_m1*K_c1*K_d1)
E_ph=sqrt( E_1ph^2 +  E_3ph^2     )
printf('r.m.s value of resultant voltage is %.1f V',E_ph)
E_line=sqrt(3)*E_1ph   //For line Value, 3rd harmonic does not appear
printf('\nline voltage is %.3f V',E_line)
