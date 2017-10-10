
clear//

//Variable Declaration
P1=80 //Load in lb
P2=100 //Load in lb
b1=3 //Distance of load from end in ft
b2=2 //Distance of load from end in ft
L=9 //Span of the beam in ft

//Calcualtions
EI_delta1=(P1*b1*48**-1)*(3*L**2-4*b1**2) //Deflection in lb.ft^3
EI_delta2=(P2*b2*48**-1)*(3*L**2-4*b2**2) //Deflection in lb.ft^3
EI_delta=EI_delta1+EI_delta2 //Deflection at modspan in lb.ft^3

//Result
printf("\n The deflection at midspan is %0.0f  lb.ft^3 downward",EI_delta)
