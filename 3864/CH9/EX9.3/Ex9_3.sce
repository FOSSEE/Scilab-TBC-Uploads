clear
//
//

//Initilization of Variables

//Flange 
b=100 //mm //Width

D=80 //mm //Overall Depth
t=10 //mm //Thickness of web and flanges
L=3000 //mm //Length of strut
E=200*10**3 //N/mm**2 //Modulus of Elasticity

//Calculations

//Let centroid be at depth y_bar from top fibre
y_bar=(b*t*t*2**-1+(D-t)*t*((D-t)*2**-1+t))*(b*t+(D-t)*t)**-1 //mm 

//M.I at x-x axis
I_x=1*12**-1*b*t**3+b*t*(y_bar-t*2**-1)**2+1*12**-1*t*((D-t))**3+t*((D-t))*((((D-t)*2**-1)+t)-y_bar)**2

//M.I at y-y axis
I_y=1*12**-1*t*b**3+1*12**-1*(D-t)*t**3 //mm**3

//Least M.I
I=I_y

//Since both ends are hinged
//Feective Length=Actual Length
L=3000 //mm
l=3000 //mm
//Buckling Load 
P=%pi**2*E*I*(l**2)**-1*10**-3 //KN

//Result
printf("\n The Buckling Load for strut of tee section %0.2f  KN",P)
