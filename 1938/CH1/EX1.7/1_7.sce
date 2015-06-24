clc,clear
printf('Example 1.7\n\n')

I_L=150,A=4
N=1800 //in rpm
W_b=1.2  //Brush width
W_m=0  //width of mica insulation
L=0.06*10^-3 //Inductance
segments=64
n_s=1800/60   //in rps and not rpm
v=n_s*segments  //peripheral speed in segments per second

T_c=(W_b-W_m)/v  //Time of commutation
I=I_L/A  //Current through a conductor

//Part(i)
E_l=L*2*I/T_c
printf('\n(i)   Reactive voltage using Linear commutation is %.1f V',E_l)

//Part(ii)
E_s=1.11*L*2*I/T_c
printf('\n(ii)  Reactive voltage using Sinusoidal commutation is %.3f V',E_s)
