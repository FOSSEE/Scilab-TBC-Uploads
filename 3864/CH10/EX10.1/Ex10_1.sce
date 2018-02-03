clear
//
//

//Initilization of Variables

P_e=300 //N/mm**2 //Elastic Limit in tension
FOS=3  //Factor of safety
mu=0.3 //Poissons ratio
P=12*10**3 //N Pull 
Q=6*10**3 //N //Shear force

//Calculations

//Let d be the diameter of the shaft

//Direct stress
//P_x=P*(%pi*4**-1*d**3)**-1
//After substituting values and further simplifying we get
//P_x=48*10**3

//Now shear stress at the centre of bolt
//q=4*3**-1*q_av
//After substituting values and further simplifying we get
//q=32*10**3*(%pi*d**2)**-1

//Principal stresses are
//P1=P_x*2**-1+((P_x*2**-1)**2+q**2)**0.5
//After substituting values and further simplifying we get
//p1=20371.833*(d**2)**-1

//P2=P_x*2**-1-((P_x*2**-1)**2+q**2)**0.5
//After substituting values and further simplifying we get
//P2=-5092.984*(d**2)**-1

//q_max=((P_x*2**-1)**2+q**2)**0.5

//From Max Principal stress theory
//Permissible stress in Tension
P1=100 //N/mm**2 
d=(20371.833*P1**-1)**0.5

//Max strain theory
//e_max=P1*E**-1-mu*P2*E**-1
//After substituting values and further simplifying we get
//e_max=21899.728*(d**2*E)**-1

//According to this theory,the design condition is
//e_max=P_e*(E*FOS)**-1
//After substituting values and further simplifying we get
d2=(21899.728*3*300**-1)**0.5  //mm

//Max shear stress theory
//e_max=shear stress at elastic*(FOS)**-1
//After substituting values and further simplifying we get
d3=(12732.421*6*300**-1)**0.5 //mm

//Result
printf("\n Diameter of Bolt by:Max Principal stress theory %0.2f  mm",d)
printf("\n                    :Max strain theory %0.2f  mm",d2)
printf("\n                    :Max shear stress theory %0.2f  mm",d3)
