clear
//
//

//Initilization of Variables

d=150 //mm //Diameter
T=20*10**6 //N //Torque
M=12*10**6 //N-mm //B.M
F=200*10**3 //N //Axial Thrust

//Calculations

//M.I
I=(%pi*64**-1*d**4)

//Bending stress 
f_A=M*I**-1*(d*2**-1) //N/mm**2
f_B=-f_A //N/mm**2

//Axial thrust due to thrust
sigma=F*(%pi*4**-1*d**2)**-1

//At A
p_x=f_A-sigma //N/mm**2

//At B
p_x2=f_B-sigma //N/mm**2

p_y=0 //At A and B

//Polar Modulus
J=%pi*32**-1*d**4 //mm**4

//Shearing stress at A and B
q=T*J**-1*(d*2**-1) //N/mm**2


//Principal Stresses
//At A
P1=(p_x+p_y)*2**-1+(((p_x-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2
P2=(p_x+p_y)*2**-1-(((p_x-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2

//Max shear stress
q_max1=(((p_x-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2

//At B
P1_2=(p_x2+p_y)*2**-1+(((p_x2-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2
P2_2=(p_x2+p_y)*2**-1-(((p_x2-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2

//Max shear stress
q_max2=(((p_x2-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2


//Result
printf("\n MAx Principal Stresses:P1 %0.2f  N/mm**2",P1)
printf("\n                       :P2 %0.2f  N/mm**2",P2)
printf("\n Min Principal Stresses:P1_2 %0.2f  N/mm**2",P1_2)
printf("\n                       :P2_2 %0.2f  N/mm**2",P2_2)
