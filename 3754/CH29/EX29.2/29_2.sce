clear//

//Variables

Av = 100.0                     //Voltage gain
A1v = 20.0                     //Voltage gain with negative feedback  

//Calculation

beta = (Av/A1v - 1) / Av       //feedback ratio 

//Result

printf("\n The percentage of the negative feedback is  %0.3f",beta * 100)
