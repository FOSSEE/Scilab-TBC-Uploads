clear
//Variable declaration
Q_tl=15// Total lighting load
P_ra=90// % of load taken from return air
P_a=25// % of load rejected to ambient

//Calculation
Q_ra=Q_tl*(P_ra*10**-2)// Picked up by return air in kW
Q_a=Q_ra*(P_a*10**-2)// Rejected to ambient in kW
Q_net=Q_tl-Q_a// Net room load in kW 
printf("\n \nNet room load=%2.3f kW",Q_net)

