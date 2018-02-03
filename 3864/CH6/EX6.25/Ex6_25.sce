clear
//
//

//Initilization of Variables

b=180 //mm //width of flange
d=10 //mm //Depth of flange
t=10 //mm //Thickness of flange
D=400 //mm //Overall Depth 

//Calculations

I_xx=1*12**-1*(b*D**3-(b-t)*(D-2*d)**3)
I_yy=1*12**-1*((D-2*d)*t**3+2*t*b**3)

//If warping is neglected
J=I_xx+I_yy //mm**4

//Since b/d>1.6,we get
J2=1*3**-1*d**3*b*(1-0.63*d*b**-1)*2+1*3**-1*t**3*(D-2*d)*(1-0.63*t*b**-1)

//Over Estimation of torsional Rigidity would have been 
T=J*J2**-1

//Result
printf("\n Error in assessing torsional Rigidity if the warping is neglected is %0.2f  ",T)
