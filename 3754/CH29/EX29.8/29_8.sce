clear//

//Variables

A1v = 100.0                            //Voltage gain with feedback
dA1vbyA1v = 0.01                       //Percentage change in closed loop gain   
dAvbyAv = 0.20                         //Percentage change in open loop gain

//Calculation

betamultAvplus1 = dAvbyAv/dA1vbyA1v    //Product of feedback ratio and voltage ratio plus one
Av = A1v * betamultAvplus1             //Voltage gain without feedback    
beta = betamultAvplus1 / Av            //Feedback ratio      

//Result

printf("\n The value of Av is  %0.3f .\nThe value of beta is  %0.3f .",Av,beta)
