clc
//initialization of varaibles
disp("from chart")
T6=2600 //R
mratio=0.05
V6d=82 //cu ft
E6d=465 //Btu
H6d=655 //Btu
T6d=2480 //R
Hs=58 //Btu
LHV=19256
//calculations
H1=mratio*H6d + (1-mratio)*Hs
dV=22-3.67
PD=0.12
Work=446*PD/dV
pm=Work*778/(144*PD)
eta=446/((1-mratio)*(LHV*0.0665))
//results
printf("Efficiency = %.3f",eta)
printf("\n Mean effective pressure = %d psi",pm)
printf("\n Work per machine cycle = %.2f Btu",Work)
