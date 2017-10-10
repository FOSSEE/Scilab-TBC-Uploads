clear//

//Variables

A1v = 100.0                      //Voltage gain with negative feedback
Vin = 50.0 * 10**-3              //Input voltage without feedback (in volts)
V1in = 0.6                       //Input voltage with feedback (in volts)  

//Calculation

V1o = A1v * V1in                 //Output voltage with feedback (in volts)
Vo = V1o                         //Output voltage without feedback (in volts)   
Av = Vo / Vin                    //Voltage gain without feedback 
beta = (Av/A1v - 1) / Av         //feedback ratio 

//Result

printf("\n The value of voltage gain without feedback is  %0.3f .\nThe value of voltage gain with feedback is  %0.3f .",Av,A1v)
