
clear//

//Variable Declaration
P1=15 //Load in kN
P2=25 //Load in kN
P3=50 //Load in kN
R=90 //Load in kN
L1=3.5 //Length in m
L2=2 //Length in m
L3=3 //Length in m
L=12 //Total span in m

//Calculation
//Part 1
//Maximum Bending Moment at A
R1=R*L1*L**-1 //Reaction 1 in kN
M_A=R1*L1 //Moment about A in kN.m
//Maximum Bending Moment at B
R1_2=R*(L1+(L3-L2))*L**-1 //reaction 1 in kN
M_B=R1_2*(L1+(L3-L2))-P1*L2 //Moment at B in kN.m

//Maximum Moment at C
R2=(P2+P3)*(L2+L3)*L**-1 //Reaction 2 in kN
M_C=R2*(L2+L3) //Moment at C in kN.m

[M_max] = (max(M_A,M_B,M_C))

//Part 2
R2_2=R*(L-L3)*L**-1 //Reaction 2 in kN

[V_max] = (max(R1,R2,R1_2,R2_2))


//Result
printf("\n The maximum Shear force is %0.3f kN and the Maximum Bending Moment is %0.1f kN.m",V_max,M_max)
