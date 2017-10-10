
clear//

//Variable Declaration
wo=600 //Load in N/m
L=6 //Span of the beam in m
b=2 //Distance of the load from end in m
a=1 //Distance of the load from end in m

//Calulations
EI_delta1=wo*384**-1*(5*L**4-12*L**2*b**2+8*b**4) //Deflection in N.m^3
EI_delta2=wo*96**-1*a**2*(3*L**2-2*a**2) //Deflection in N.m^3

EI_delta=EI_delta1-EI_delta2 //Total Delfection at midspan in N.m^3

//Result
printf("\n The total Deflection at midpsan is %0.0f N.m^3 downwards",EI_delta)
