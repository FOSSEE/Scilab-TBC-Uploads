clear
//

//Initilization of Variables

b=200 //mm //Width of timber 
d=400 //mm //Depth of timber
t=6 //mm //Thickness
b2=200 //mm //width of steel plate
t2=20 //mm //Thickness of steel plate
M=40*10**6 //KN-mm //Moment
//Let E_s*E_t**-1=X
X=20 //Ratio of Modulus of steel to timber

//Calculations

//let y_bar be the Distance of centroidfrom bottom most fibre
y_bar=(b*d*(b+t)+t2*b2*t*t*2**-1)*(b*d+t2*b2*t)**-1 //mm

//Moment of Inertia
I=1*12**-1*b*d**3+b*d*(b+t-(y_bar))**2+1*12**-1*t2*b2*t**3+b2*t2*t*((y_bar)-t*2**-1)**2


//distance of the top fibre from N-A
y_1=d+t-y_bar //mm

//Distance of the junction of timber and steel From N-A
y_2=y_bar-t //mm

//Stress in Timber at the top
Y=M*I**-1*y_1 //N/mm**2

//Stress in the Timber at the junction point
Z=M*I**-1*y_2

//Coressponding stress in steel at the junction point
Z2=X*Z //N/mm**2 

//The stress in Extreme steel fibre 
Z3=X*M*I**-1*y_bar

//Result
printf("\n Stress in Extreme steel Fibre %0.2f  N/mm**2",Z3)
