clear
//
//

//Initilization of Variables

L=8000 //mm //Span of beam
w=40*10**6 //N/mm //udl

//I-section

//Flanges
b=100 //mm //Width
t=10 //mm //Thickness

D=400 //mm //Overall Depth
t2=10 //mm //thickness of web

//Calculations

//Let R_A and R_B be the Reactions at A & B respectively
R_A=w*2**-1*L*10**-9 //KN

//Shear force at 2m for left support
F=R_A-2*w*10**-6 //KN

//Bending Moment
M=R_A*2-2*w*10**-6 //KN-m

//M.I
I=1*12**-1*b*D**3-1*12**-1*(b-t)*(D-2*t2)**3 //mm**4

//Bending stress at 100 mm above N_A
f=M*10**6*I**-1*b

//Shear stress 
q=F*10**3*(t*I)**-1*(b*t*(D-t)*2**-1 +t2*(b-t2)*145) //N/mm**2

p_x=-197.06 //N/mm**2 
p_y=0 //N/mm**2
q=21.38 //N/mm**2

//Principal Stresses

P1=(p_x+p_y)*2**-1+(((p_x-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2
P2=(p_x+p_y)*2**-1-(((p_x-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2

//Max shear stress
q_max=(((p_x-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2

//Result
printf("\n Principal Stresses are: %0.2f  N/mm**2",P1)
printf("\n                         %0.2f  N/mm**2",P2)
printf("\n Max shear stress %0.2f  N/mm**2",q_max)
