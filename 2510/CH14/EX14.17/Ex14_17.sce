																					//Variable declaration:
T = 80.0                        //Pipe surface temperature (°F)
t1 = 10.0                       //Brine inlet temperature (°F)
syms DT2                        //Discharge temperature of the brine solution (°F)
m = 20*60                       //Flowrate of brine solution (lb/h)
Cp = 0.99                       //Heat capacity of brine solution (Btu/lb.°F)
U1 = 150                        //Overall heat transfer coefficient at brine solution entrance (Btu/h.ft^2.°F)
U2 = 140                        //Overall heat transfer coefficientat at brine solution exit (Btu/h.ft^2.°F)
A = 2.5                         //Pipe surface area for heat transfer (ft^2)

//Calculation:
DT1 = T-t1                      //Temperature approach at the pipe entrance (°F)
Q = m*Cp*(DT1-DT2)              //Energy balance to the brine solution across the full length of the pipe (Btu/h)
DT1m = (DT1-DT2)/log(DT1/DT2)   //Equation for the LMTD
QQ = A*(U2*DT1-U1*DT2)/log(U2*DT1/U1/DT2)   //Equation for the heat transfer rate (Btu/h)
E = QQ-Q                        //Energy balance equation
R = integrate(E,DT2,1.2)
     //
DT = 51.6254331484575                      //Log mean temperature difference
t2 = T-DT                       //In discharge temperature of the brine solution (°F)
t2c = 5/9*(t2-32)               //In discharge temperature of the brine solution in °C (c/5 = (F-32)/9)
_Q_ = eval(subst(DT,DT2,Q))            //Heat transfer rate (Btu/h)

Q1 = round(_Q_*10**-1)/10**-1
Q2 = round(_Q_/3.412*10**-2)/10**-2

//Result:
printf("The temperature approach at the brine inlet side is : %.1f  °F.",DT1)
printf("Or, the temperature approach at the brine inlet side is : %.1f °C.",DT1/1.8)
printf("The exit temperature of the brine solution is : %.2f °F.",t2)
printf("Or, the exit temperature of the brine solution is : %.1f °C.",(t2-32)/1.8)
printf("The rate of heat transfer is : %f Btu/h.",Q1)
printf("Or, the rate of heat transfer is : %f W.",Q2)
				
								
