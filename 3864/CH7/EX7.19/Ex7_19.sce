clear
//
//

//Initilization of Variables

d=75 //mm //diameter 
P=30*10**6 //W //Power transmitted
W=6 //N-mm/sec //Load
L=1000 //mm 
N=300 //r.p.m

//Calculations

//B.M
M=W*L*4**-1 //N-mm
T=P*60*(2*%pi*N)**-1 //Torque transmitted

//M.I
I=%pi*64**-1*d**4 //mm**4

//Bending stress
f_A=M*I**-1*(d*2**-1) //N/mm**2

//At A
p_x=f_A
p_y=0

//Polar Modulus
J=%pi*32**-1*d**4 //mm**4

//Shearing stress
q=T*J**-1*(d*2**-1) //N/mm**2

//Principal Stresses
P1=(p_x+p_y)*2**-1+(((p_x-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2
P2=(p_x+p_y)*2**-1-(((p_x-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2

//Max shear stress
q_max=(((p_x-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2

//Bending stress
p_x2=0
p_y2=0

//Shearing stress
q2=T*J**-1*d*2**-1 //N/mm**2

//Principal stresses
P3=(p_x2+p_y2)*2**-1+(((p_x2-p_y2)*2**-1)**2+q2**2)**0.5 //N/mm**2
P4=(p_x2+p_y2)*2**-1-(((p_x2-p_y2)*2**-1)**2+q2**2)**0.5 //N/mm**2

//Max shear stress
q_max2=(((p_x2-p_y2)*2**-1)**2+q2**2)**0.5 //N/mm**2

//Answer for Principal Stresses P1,P2 and Max stress i.e q_max is incorrect in Book

//Result
printf("\n Principal Stresses at vertical Diameter:P1 %0.2f  N/mm**2",P1)
printf("\n                                        :P2 %0.2f  N/mm**2",P2)
printf("\n Max stress at vertical Diameter        :   %0.2f  N/mm**2",q_max)
printf("\n Principal Stresses at Horizontal Diameter:P3 %0.2f  N/mm**2",P3)
printf("\n                                        :P4 %0.2f  N/mm**2",P4)
printf("\n Max stress at Horizontal Diameter      :   %0.2f  N/mm**2",q_max2)
