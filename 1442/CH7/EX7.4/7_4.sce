clc
//initialisation of variables
Qc= 9 //kW
W= 7.5 //kW
Qh= Qc+W
Tc= 50 //C
Th= 400 //C
//CALCULATIONS
n= W/Qh
nrev= 1-((273.15+Tc)/(273.15+Th))
//RESULTS
printf (' efficiency of heat engine = %.3f ',n)
printf (' \n efficiency = %.3f ',nrev)
