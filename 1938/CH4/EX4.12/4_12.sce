clc,clear
printf('Example 4.12\n\n')

Ns=600 //synchronous speed in rpm
Pole=10
l=30/100     //divided by 100 for centimetre-metre conversion
Pole_pitch=35/100  //numerically equal to pi*d/Pole
Phase=3
conductors_per_slot=8
A1=Pole_pitch*l //Area of each fundamental pole
m=3   //Slot per Pole per Phase
n=Phase*m //slots per pole
beeta=180/n  //slot angle

B_m1=1,B_m3=0.3,B_m5=0.2  //amplitude of 1st, 3rd and 5th harmonic
phi_1=(2/%pi)*A1*B_m1  //average value of fundamental flux per pole 
f=Ns*Pole/120 //frequency

Coil_span=(8/9)*180
alpha=180-Coil_span
//pitch factor for 1st, 3rd and 5th harmonic
K_c1=cosd(alpha/2)  
K_c3=cosd(3*alpha/2)
K_c5=cosd(5*alpha/2)

// using K_dx=sin(m*x*beeta*(%pi/180)/2) /(m*sin(x*beeta*(%pi/180)/2))
//distribution factor for 1st, 3rd and 5th harmonic
K_d1=sind(m*1*beeta/2) /(m*sind(1*beeta/2))
K_d3=sind(m*3*beeta/2) /(m*sind(3*beeta/2))
K_d5=sind(m*5*beeta/2) /(m*sind(5*beeta/2))

Slots=n*Pole
Total_conductors=conductors_per_slot * Slots
Total_turns=Total_conductors/2
T_ph=Total_turns/3  //turns per phase

//EMF of 1st , 3rd and 5th harmonic
E_1ph=4.44 * K_c1 * K_d1*phi_1 * f * T_ph
E_3ph= E_1ph* (B_m3*K_c3*K_d3)/(B_m1*K_c1*K_d1)
E_5ph= E_1ph* (B_m5*K_c5*K_d5)/(B_m1*K_c1*K_d1)

// Using E_xph= E_1ph* (B_mx*K_cx*K_dx)/(B_m1*K_c1*K_d1)
E_ph=sqrt( E_1ph^2 + E_3ph^2 + E_5ph^2 )
printf('Phase value of induced e.m.f is %.2f V ',E_ph)
E_line=sqrt(3) * sqrt( E_1ph^2 + E_5ph^2  )//no 3rd harmonic appears in line value
printf('\nline value of induced e.m.f is %.2f V ',E_line)

printf('\n\nAnswer mismatches due to approximation')
