clear//

//Variables

Av = 1000.0                     //Voltage gain
A1v = 10.0                      //Voltage gain with negative feedback  

//Calculation

beta = (Av/A1v - 1) / Av        //feedback ratio 

//Result

printf("\n The fraction of the output that is feedback to the input is  %0.3f .",beta)
