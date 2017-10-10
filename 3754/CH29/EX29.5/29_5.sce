clear//

//Variables

Av = 60.0                       //Voltage gain
A1v = 80.0                      //Voltage gain with negative feedback

//Calculation

beta = (1 - Av/A1v ) / Av       //feedback ratio 
beta1 = 1/Av                    //feedback ratio which causes oscillation

//Result

printf("\n Value of feedback ratio is  %0.3f .\nThe percentage of feedback which causes oscillation is  %0.1f percentage.",beta,beta1*100)
