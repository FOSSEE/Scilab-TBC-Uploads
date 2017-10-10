// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.21


//Given Data Set in the Problem(SI Units)
V1=0.6
t=50
T1=273+t
P1=0.3*10^6
V2=0.3
k=1.4

//Calculations
//1) Isothermal
//Using pv=constant
P2=P1*V1/V2
mprintf("The Final Pressure for isothermal conditions is %f N/mm^2 \n",P2*10^-6)

//2) Adiabatic
//Using PV^k=constant  or P1V1^k=P2 V2^k
P2=P1*(V1/V2)^k
mprintf("The Final Pressure for Adiabatic conditions is %f N/mm^2 \n",P2*10^-6)
//Using T V^(k-1) = constant
T2=T1*(V1/V2)^(k-1)
mprintf("The Final Temperature for Adiabatic conditions is %f C",T2-273)
