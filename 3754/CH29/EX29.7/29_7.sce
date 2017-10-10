clear//

//Variables

Av = 800.0                                 //Voltage gain
beta = 0.05                                //Feedback ratio  
dAvbyAv = 20.0                             //Percentage change in open loop gain

//Calculation

dA1vbyA1v = 1 / (1 + beta*Av)*dAvbyAv      //Percentage change in closed loop gain 

//Result

printf("\n The percentage change in closed loop gain is  %0.1f percentage.",dA1vbyA1v)
