clc
//given data
i=12/100.0 // interest rate 
n=10 // time in years

time=100.0 // days geyser is used in year
effi=0.9 // efficiency of geyser
w=100.0 // weight of water in kg
C=4.2 // heat capacity in kJ/kg-degree C
theta=60-15 // temperature difference in C
cost=4 // cost of electricity per kWh

Elec=(1/effi)*w*C*theta/3600.0 // electricity used in kWh/day



A=Elec*time*cost // annual saving in Rs

P=A*(((1+i)**n)-1)/(i*((1+i)**n)) // final amount in rs

printf("The final amount after 10 years is Rs %i",P)

// the answer is slightly different in textbook due to approximation while in scilab answers are precise