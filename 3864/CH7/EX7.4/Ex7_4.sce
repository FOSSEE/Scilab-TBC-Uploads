clear
//
//
//

//Initilization of Variables

//Direct Stresses
P1=60 //N/mm**2 
P2=100 //N/mm**2

Theta=25 //Degree //Angle

//Calculations

//Normal Stress
P_n=(P1-P2)*2**-1+(P1+P2)*2**-1*cos(2*Theta*%pi*180**-1) //N/mm**2

//Tangential Stress
P_t=(P1+P2)*2**-1*sin(Theta*2*%pi*180**-1) //N/mm**2

//Resultant stress
P=(P_n**2+P_t**2)**0.5 //N/mm**2

theta2=atan(P_n*P_t**-1)*(180*%pi**-1)

//Result
printf("\n Stresses on the plane AC is: %0.2f  N/mm**2",P_n)
printf("\n                              %0.2f  N/mm**2",P_t)
