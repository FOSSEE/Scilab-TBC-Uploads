clear
//
//

//Initilization of Variables

//Wooden Section
b=300 //mm //Width
d=300 //mm //Depth

D=100 //mm //Diameter of Bore
F=10*10**3 //N //Shear Force

//Calculations

//Moment Of Inertia Of Section
I=1*12**-1*b*d**3-%pi*64**-1*D**4

//Shear stress at crown of circle
sigma=F*b*D*(d*2**-1-D*2**-1)*(b*I)**-1

//Let a*y_bar=X
X=b*d*2**-1*d*4**-1-%pi*8**-1*D**2*4*D*2**-1*(3*%pi)**-1 //mm**3

//Shear Stress at Neutral Axis
sigma2=F*X*((b-D)*I)**-1 //N/mm**2

//Result
printf("\n Shearing Stress at Crown of Bore %0.3f  N/mm**2",sigma)
printf("\n Shear Stress at Neutral Axis %0.3f  N/mm**2",sigma2)
