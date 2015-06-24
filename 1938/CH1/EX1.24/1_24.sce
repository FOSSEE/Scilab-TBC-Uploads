clc,clear
printf('Example 1.24\n\n')

P=4
I_L=150
N=1500 //commutator speed in rpm
n_s=N/60  //commutator speed in r.p.s
W_b=1.2 //Brush pitch
W_m=0//Pitch of mica insulation
L=0.05*10^-3  //inductance of armature coils in henry
A=P //A=P for lap wound
segments=64
v=n_s*segments //peripheral speed in segments per second

T_c=(W_b-W_m)/v  //Time of commutation
I=I_L/A  //current through each conductor

E=L*2*I/T_c  //Linear commutation
E2=1.11*L*2*I/T_c  //Sinusoidal commutation

printf('\nReactive voltage (linear commutation) is %.0f V',E)
printf('\nReactive voltage (sinusoidal commutation) is %.2f V',E2)
