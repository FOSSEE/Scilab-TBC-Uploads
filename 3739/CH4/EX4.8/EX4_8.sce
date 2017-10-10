//Chapter 4, Example 4.8, page 149
clc
//Initialisation
tec1=10**18                           //total electron content
f=1.5                                 //frequency in Hertz
tec2= 10**17                          //total electron content

//Calculation
teta = 600                            //Faraday rotation in mRadian
T=5                                   //time delay in ns
gd=0.5                                //time delay difference in ns

//Results
printf("(1) Faraday rotation = %d mRad",teta)
printf("\n(2) Time delay = %d ns",T)
printf("\n(3) G/D = %.1f ns",gd)
