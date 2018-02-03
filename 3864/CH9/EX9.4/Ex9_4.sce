clear
//
//

//Initilization of Variables

D=400 //mm //Overall Depth

//Flanges
b=300 //mm //Width
t=50 //mm //Thickness

t2=30 //mm //Web Thickness

dell=10 //mm //Deflection
w=40 //N/mm //Load
FOS=1.75 //Factor of safety
E=2*10**5 //N/mm**2

//Calculations

//M.I at x-x axis
I_x=1*12**-1*(b*D**3-(b-t2)*b**3) //mm**4

//Central Deflection
//dell=5*w*L**4*(384*E*I)**-1
//After sub values in above equation and further simplifying we get
L=(dell*384*E*I_x*(5*w)**-1)**0.25

//M.I aty-y axis
I=1*12**-1*t*b**3+1*12**-1*b*t2**3+1*12**-1*t*b**3 //mm**4
I_y=1*12**-1*t*b**3+1*12**-1*b*t2**3+1*12**-1*t*b**3 //mm**4

//Both the Ends of column are hinged

//Crippling Load
P=%pi**2*E*I*(L**2)**-1 //N

//Safe Load
S=P*(FOS)**-1*10**-3 //N

//Result
printf("\n Safe Load if I-section is used as column with both Ends hhinged %0.2f  KN",S)
