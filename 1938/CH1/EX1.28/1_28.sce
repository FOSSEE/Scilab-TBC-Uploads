clc,clear
printf('Example 1.28\n\n')

I_L=100
P=4 //Poles
A=P //for lap wound armature
W_b=1.4,W_m=0 //Brush width and width of mica insulation
N=1400//armature speed in r.p.m
segments=64 //no of commutator segments
L=0.05*10^-3 //inductance of armature coil in henry
n_s=N/60  //speed in r.p.s
v=n_s*segments //Segments per second
T_c=(W_b-W_m)/v //time of commutation
I=I_L/A   //Current through conductor
E=L*2*I/T_c  //Linear commutation

printf('\nReactive voltage considering linear commutation is %.2f volts',E)
