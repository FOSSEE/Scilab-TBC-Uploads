//Variable declaration:
T = 80                                //Pipe surface temperature ( F)
t1 = 10                               //Inlet temperature of brine solution ( F)
m = 1200                              //mass flowrate of solution (kg/s)
c = 0.99                              //Heat capacity of brine solution (Btu/lb. F)
A = 2.5                               //Heat transfer area (ft^2)
U1 = 150                              //Overall heat transfer coefficient at temperature approach (Btu/h.ft^2. F)
U2 = 140                              //Overall heat transfer coefficient at inlet brine temperature (Btu/h.ft^2. F)

//Calculation:
DT1 = T-t1                            //Temperature approach at the pipe entrance ( F)

function [ans] = equation(DT2)
	Q1 = m*c*(DT1-DT2)               //Energy balance to the brine solution across the full length of the pipe (Btu/h)
	DTlm = (DT1-DT2)*log(DT2/DT1)    //Log mean temperature difference ( F)
	Q2 = A*(U2*DT1-U1*DT2)/log((U2*DT1)/(U1*DT2)) //Heat transfer rate (Btu/h)
	ans = Q2-Q1
endfunction
t2 = T-fsolve(1,equation)	   //The temperature of the brine solution ( F)

//Results:
printf("The temperature of brine solution is:  %.0f C",(t2-32)/1.8)
