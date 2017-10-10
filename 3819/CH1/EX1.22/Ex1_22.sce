// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.22

//Given Data Set in the Problem(SI Units)

m=5
t=10
T=273+10
V=0.4
M=28
R=8314              //Universal Gas constant in N-m/(kg-mole K)

//Calculations
p=((m/M)*R*T)/V
mprintf("The pressure exerted by the 5kg Nitrogen gas is %f N/mm^2 \n",p*10^-6);
