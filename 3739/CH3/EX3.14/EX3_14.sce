//Chapter 3, Example 3.14, page 115
clc

//Initialisation
f1=430                                    //upper frequency band
f2=410                                    //lower frequency band
d=80                                      //distance in meter

//Calculation
Yv=0.1                                     //Specific attenuation obtained from graph fig 3.34 
Lv=Yv*d                                   //loss of forest trees
Am=((f1+f2)/2)**0.5                        //maximum value for trees excess loss.

//Results
printf("Specific attenuation index, Yv = %.1f dB/m",Yv)
printf("\nLoss of forest trees, Lv = %.1f dB",Lv)
printf("\nMaximum value for trees excess loss = %.1f dB",Am)
