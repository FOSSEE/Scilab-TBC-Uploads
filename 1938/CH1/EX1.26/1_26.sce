clc,clear
printf('Example 1.26\n\n')

I=40  //current PER conductor
W_b=3,W_m=0//brush width and width of mica insulation
N=600 //commutator speed in rpm 
n_s=N/60 //commutator speed in rps
L=0.15*10^-3 //self inductance in Henry
segments=50  
v=n_s*segments //peripheral speed in segments per second
T_c=(W_b-W_m)/v //time of commutation

E=L*2*I/T_c  //Linear commutation
E2=1.11*L*2*I/T_c  //Sinusoidal commutation

printf('\nReactive voltage (linear commutation) is %.0f volts',E)
printf('\nReactive voltage (sinusoidal commutation) is %.2f volts',E2)
