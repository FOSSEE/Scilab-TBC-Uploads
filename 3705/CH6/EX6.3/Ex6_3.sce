
clear//

//Variable Declaration
P=300 //Point Load in N
R_a=100 //Reaction at A in N
R_c=200 //Reaction at C in N
E=12 //Youngs Modulus in GPa
L1=2 //Length of the load from A in m
L2=1 //Length of the load from C in m
b=0.04 //Width of the CS of the beam in m
h=0.08 //Depth of the CS of the beam in m

//Claculations
//Moment of inertia 
I=b*h**3*12**-1 //Moment of Inertia in m^4
//Flexural Rigidity
FR=E*10**9*I //FLexural rigidity in N.m^2

//Moments in terms of x are
//Given
//After the variable Calculations we get
C1=-400/3 //Constant
C3=C1 //Constant
C2=0 //Constant
C4=0 //Constant

//to get max displacement x we have
x=(6.510/2.441)**0.5 //Length at which displacement is maximum in m
v=(0.8138*x**3-6.510*x) //Displacement in mm

//Largest slope
theta=(2.441*(L1+L2)**2-(7.324*(L1+L2-L1)**2)-6.150)*10**-3//Angle in radians

//Result 
printf("\n The maximum displacement is %0.2f mm downwards",-v)
printf("\n The maximum angle is %0.3f degrees anticlockwise",theta*180*%pi**-1)
