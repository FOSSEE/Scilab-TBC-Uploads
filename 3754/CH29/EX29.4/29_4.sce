clear//

//Variables

V1o=12.5;Vo=12.5;
V1in = 1.5                      //Input voltage with feedback (in volts)
Vin = 0.25                      //Input voltage without feedback (in volts)

//Calculation

Av = Vo / Vin                   //Voltage gain without negative feedback
A1v = V1o / V1in                //Voltage gain with negative feedback
beta = (Av/A1v - 1) / Av        //feedback ratio 

//Result

printf("\n The value of voltage gain without negative feedback is  %0.3f .\nThe value of voltage gain with negative feedback is  %0.2f .\nThe value of beta is  %0.3f .",Av,A1v,beta)
