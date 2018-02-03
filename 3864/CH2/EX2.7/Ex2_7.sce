clear
//

//Initilization of Variables

E1=2*10**5 //N/mm**2 //modulus of Elasticity of material1
E2=1*10**5 //N/mm**2 //modulus of Elasticity of material2
P=25*10**3 //N //Load 
t=20 //mm //thickness of material
b1=40 //mm //width of material1
b2=30 //mm //width of material2
L1=500 //mm //Length of material1
L2=750 //mm //Length of material2

//Calculations

A1=b1*t //mm**2 //Area of materila1
A2=b2*t //mm**2 //Area of material2

dell_l1=P*L1*(A1*E1)**-1 //Extension of Portion1
dell_l2=P*L2*(A2*E2)**-1 //Extension of portion2

//Total Extension of Bar is
dell_l=dell_l1+dell_l2

//Result
printf("\n The Total Extension of the Bar is %0.2f  mm",dell_l)
