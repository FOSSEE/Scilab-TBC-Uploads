// Problem 5.4,Page no.124

clc;clear;
close;

b=10 //cm //width of beam
d=20 //cm depth of beam

sigma=8 //N/mm**2 //Max bending stress
W=5000 //N/m**2 //Load of floor
A=450 //cm**2 //Area of joist
L=5 //m //span of floor

//Calculations
//Let x be the centre to centre spacingof the joists

//A_1=5*x**2 //m**2 //Area  of floor between any two joists
//W_1=5*x*W //N //total load supported by one interior joist
//M=W_1*L*8**-1 //Max bending moment 
I=1*12**-1*b*(d*10**-2)**3*10**-2 //m**4 //M.I of joist
y=0.15 //cm //Distance of of farthest fibre
M=I*y**-1*sigma //N*m

//Now equating to max bending moment we get
x=(18000*8)*(25000*5)**-1

//Result
printf("The Max Bending Moment is %.2f m",x)
