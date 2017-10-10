//Chapter 4, Example 4.1, page 130
clc

//Initialisation
h=400                                            //height in Km
pd=1*10**8                                       //plasma density at height D
pe=1*10**10                                     //plasma density at height E
pf=3*10**11                                      //plasma density at height F
Wd=20*10**3                                      //thickness of D
We=40*10**3                                      //thickness of E
Wf=190*10**3                                     //thickness of F

//Calculation
tecd=Wd*pd                                       //total electron content at D
tece=We*pe                                       //total electron content at E
tecf=Wf*pf                                       //total electron content at F
tec=tecd+tece+tecf                               
tec1=tec*sqrt(2)                            //total electron content

//Results
printf("(2) TEC (D) = %.1f x 10^12 el/m^2",(tecd/10**12))
printf("\n    TEC (E) = %.1f x 10^14 el/m^2",(tece/10**14))
printf("\n    TEC (F) = %.2f x 10^16 el/m^2",(tecf*10**-16))
printf("\n(3) TEC = %.1f x 10^16 el/m^2",(tec1/10**16))
