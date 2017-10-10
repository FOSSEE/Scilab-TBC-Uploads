clear//

//Variables

Av = 100.0                    //Voltage gain without feedback
BW = 200.0 * 10**3            //Bandwidth without feedback (in Hertz)
beta = 0.05                   //Feedback ratio
BWn = 1.0 * 10**6             //New bandwidth without feedback (in Hertz)

//Calculation

BW1 = (1 + beta*Av) * BW      //Bandwidth with feedback (in Hertz)  
A1v = Av/(1 + beta*Av)        //Voltage gain with feedback
beta1 = (BWn/BW - 1)/Av       //Amount of feedback required 

//Result

printf("\n The new bandwidth is  %0.3f  kHz.\nThe new gain is  %0.1f .",BW1*10**-3,A1v)
printf("\n Amout of feedback required when BW = 1MHz is  %0.3f percentage.",beta1 * 100)
