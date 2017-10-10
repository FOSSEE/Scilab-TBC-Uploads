// Problem no 6.3,Page No.156

clc;clear;
close;

L=3 //m //Length of beam
L_1=1.2 //m //Distance from fixed end
d=0.25 //m //Depth of beam
w=15*10**3 //N //U.d.L
W=40*10**3 //N //Point Load
E=2*10*10**4 //N/m**2 
I=13500*10**-4 //M.I

//Calculations

y_b=W*L_1**3*(3*E*I)**-1+W*L_1**2*(2*E*I)**-1*(L-L_1)+w*L**4*(8*E*I)**-1 //Deflection at free end

M=W*L_1+w*L*L*2**-1 //Max Bending moment at the fixed end A //Nm
y=d*2**-1
sigma_max=M*y*I**-1  //N/cm**2 //Max Bending stress at extreme fibre 

//Result
printf("Deflection at the free end is %.4f cm",y_b)
printf("\n Max stress due to bending is %.2f N/cm^2",sigma_max)
