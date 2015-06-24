clc,clear
printf('Example 4.16\n\n')

Pole=10
Ns=600 //speen in rpm
conductor_per_slot=8
n=12 //slots per pole
Slots=Pole*n 
m=n/3 //slots per pole per phase 
beeta=180/n //slot angle
alpha=2*beeta  //short by 2 slots

//flux per pole corresponding to 1st,3rd and 5th harmonic
phi_1=100*10^-3
phi_3=(33/100)*phi_1
phi_5=(20/100)*phi_1

//coil span factor corresponding to 1st,3rd and 5th harmonic
K_c1=cosd( alpha/2)
K_c3=cosd( 3*alpha/2)
K_c5=cosd( 5*alpha/2)

// using K_dx=sin(m*x*beeta /2) /(m*sin(x*beeta /2))
//distribution factor corresponding to 1st,3rd and 5th harmonic
K_d1=sind(m*1*beeta/2) /(m*sind(1*beeta /2))
K_d3=sind(m*3*beeta/2) /(m*sind(3*beeta /2))
K_d5=sind(m*5*beeta/2) /(m*sind(5*beeta /2))

Z=conductor_per_slot*n*Pole    //Total Conductors
Zph=Z/3 //conductors per phase
T_ph=Zph/2 //turns per phase

f=Ns*Pole/120
E_1ph=4.44*K_c1*K_d1*phi_1*f*T_ph
E_3ph=4.44*K_c3*K_d3*phi_3*f*T_ph
E_5ph=4.44*K_c5*K_d5*phi_5*f*T_ph

E_ph=sqrt( E_1ph^2 +  E_3ph^2 + E_5ph^2     )
printf('Phase value of induced e.m.f is %.0f V ',E_ph)
E_line=sqrt(3)*sqrt( E_1ph^2 +  E_5ph^2     )  //In a line value,3rd harmonic doesnt appear
printf('\nline value of induced e.m.f is %.0f V ',E_line)
