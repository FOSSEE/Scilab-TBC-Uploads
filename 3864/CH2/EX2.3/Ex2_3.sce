clear
//
//

//Initilization of Variables

//Let y be the yield stress

y=250 //N/mm**2 //yield stress
FOS=1.75 //Factor of safety
P=140*10**3 //N //compressive Load
D=101.6 //mm //External diameter

//Calculations

p=y*(FOS)**-1 //N/mm**2 //Permissible stress
A=P*p**-1 //mm**2 //Area of hollow tube

//Let d be the internal diameter of tube
d=-((A*4*(%pi)**-1)-D**2)
X=d**0.5
t=(D-X)*2**-1 //mm //Thickness of steel tube

//result
printf("\n The thickness of steel tube is %0.2f  mm",t)
