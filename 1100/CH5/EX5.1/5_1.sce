clc
//initialisation of variables
p= 15 //psia
V2= 5 //cu
V1= 10 //cu
E= 34.7 //Btu
//CALCULATIONS
dE= -E-((p*(V2-V1)*144)/(778))
//RESULTS
printf ('Change in internal enenrgy of the gas= %.2f Btu',dE)
