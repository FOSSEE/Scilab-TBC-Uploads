clear
//
//

//Initilization of Variables

M=40*10**6 //N-mm //Bending moment
T=10*10**6 //N-mm //TOrque
mu=0.25 //Poissons ratio
P_e=200 //N/mm**2 //Stress at Elastic Limit
FOS=2

//Calculations

//Let d be the diameter of the shaft

//Principal stresses are given by

//P1=16*(%pi*d**3)**-1*(M+(M**2+T**2)**0.5)
//After substituting values and further simplifying we get
//P1=4.13706*10**8*(d**3)**-1     ............................(1)

//P2=16*(%pi*d**3)**-1*(M-(M**2+T**2)**0.5)
//After substituting values and further simplifying we get
//P2=-6269718*(%pi*d**3)**-1       ..............................(2)

//q_max=(P1-P2)*2**-1
//After substituting values and further simplifying we get
//q_max=2.09988*10**8*(d**3)**-1

//Max Principal stress theory
//P1=P_e*(FOS)**-1
//After substituting values and further simplifying we get
d=(4.13706*10**8*2*200**-1)**0.33333 //mm 

//Max shear stress theory
//q_max=shear stress at elastic limit*(FOS)**-1
//After substituting values and further simplifying we get
d2=(2.09988*10**8*4*200**-1)**0.33333

//Max strain energy theory
//P_3=0
//P1**2+P2**2-2*mu*P1*P2=P_e**2*(FOS)**-1
//After substituting values and further simplifying we get
d3=(8.62444*10**12)**0.166666

//Result
printf("\n Diameter of shaft according to:MAx Principal stress theory %0.2f  mm",d)
printf("\n                               :Max shear stress theory %0.2f  mm",d2)
printf("\n                               :Max strain energy theory %0.2f  mm",d3)
