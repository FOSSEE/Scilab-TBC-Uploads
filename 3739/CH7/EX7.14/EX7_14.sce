//Chapter 7, Example 7.14, page 343
clc

//Initialisation
d=20                                      //distance in kM
po=0.02                                   //fading occurrence probability at 20 Km
d1=25                                     //distance in kM
d2=40                                     //distance in kM
fm1=30                                    //link in kM
fm2=35                                   //link in kM
fm3=40                                    //link in kM
tr=30*24*60           


//Calculation
po1=po*(d1*d**-1)**3                   //fading occurrence probability at 25 Km
po2=po*(d2/d)**3                       //fading occurrence probability at 40 Km
pw=po*10**(-fm1*10**-1)                //fade margin at 30
pw1=po1*10**(-fm2*10**-1)             //fade margin at 35
pw2=po2*10**(-fm3/10)                  //fade margin at 40
u=pw+pw1+pw2                           //total fade margin
to=u*tr                                //network outage time

//Results
printf("(1) Fading occurrence probability at 20 = %.2f",po)
printf("\n    Fading occurrence probability at 25 = %.3f",po1)
printf("\n    Fading occurrence probability at 40 = %.2f",po2)
printf("\n(2) Fade margin at 30 = %.1f x 10^-5",(pw*10**5))
printf("\n    Fade margin at 35 = %.2f x 10^-5",(pw1*10**5))
printf("\n    Fade margin at 40 = %.2f x 10^-5",(pw2*10**5))
printf("\n    Total fade margin = %.2f x 10**-5",(u*10**5))
printf("\n(3) Network outage time , To = %.3f min per month",(to))
