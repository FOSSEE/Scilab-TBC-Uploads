clear
//
//

//Initilization of Variables

//Flanges
b1=200 //mm //Width
t1=10 //mm //Thickness

//Web
d=380 //mm //Depth 
t2=8 //mm //Thickness

D=400 //mm //Overall Depth
sigma=150 //N/mm**2

//Calculations

//Area
A=b1*t1+d*t2+b1*t1 //mm**2

//Moment of Inertia
I=1*12**-1*(b1*D**3-(b1-t2)*d**3)

//Bending Moment
M=sigma*I*(D*2**-1)**-1

//Square Section

//Let 'a' be the side
a=A**0.5

//Moment of Resistance of this section
M1=1*6**-1*a*a**2*sigma

X=M*M1**-1

//Rectangular section
//Let 'a' be the side and depth be 2*a

a=(A*2**-1)**0.5

//Moment of Rectangular secction
M2=1*6**-1*a*(2*a)**2*sigma

X2=M*M2**-1

//Circular section
//A=%pi*d1**2*4**-1

d1=(A*4*%pi**-1)**0.5

//Moment of circular section
M3=%pi*32**-1*d1**3*sigma

X3=M*M3**-1

//Result
printf("\n Moment of resistance of beam section %0.2f  mm",M)
printf("\n Moment of resistance of square section %0.2f  mm",X)
printf("\n Moment of resistance of rectangular section %0.2f  mm",X2)
printf("\n Moment of resistance of circular section %0.2f  mm",X3)
