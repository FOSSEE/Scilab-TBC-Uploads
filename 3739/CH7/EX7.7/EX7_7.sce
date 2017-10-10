//Chapter 7, Example 7.7, page 315
clc

//Initialisation
f=15                                          //frequency in GHz
f1=18                                         //frequency in GHz
R=50                                          //rain intensity
ah=1.154
kh=0.0367
d=20                                          //distance in kM

//Calculation
yr=kh*R**ah
do=35*exp(-0.015*R)                       //distance in kM
de=d/(1+(d/do))                                //distance in kM
Ao=yr*de                                       //Rain Loss in dB
phi=(f**2)/(1+10**-4*f**2)
phi1=(f1**2)/(1+10**-4*f1**2)
H=1.12*10**-3*((phi1/phi)**0.5)*(phi*Ao)**0.55
Ah=Ao*(phi1/phi)**(1-H)
Av=(300*Ah)/(335+Ah)                           //Rain Loss in dB


//Results
printf("(1) Rain Loss, A = %.2f dB",Ao)
printf("\n(2) rain loss for vertical polarization, Av = %.2f dB",Av)
