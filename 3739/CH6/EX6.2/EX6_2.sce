//Chapter 6, Example 6.2, page 223
clc
//Initialisation
f=400                                       //frequency in MHz
k=1.33                                       //k factor
er=3                                         //dielectric conductivity
sg=10**-4                                    //Earth effective conductivity
eo=8.85*10**-12                             //permittivity of free space
re1=8500                                     //Effective Earth radius in Km
c=3*10**8                                    //speed of light
B=1
d=50


//Calculation
kh=1.6*10**-3                                 //horizontal polarization using Fig. 6.2
kv=5*10**-3                                   //vertical polarization using Fig. 6.2
X=2.2*B*f**(1*3**-1)*re1**(-2*3**-1)*d        //normalized length of the path
FX=11+10*log10(X)-17.6*X                       //distance attenuation value

//Results
printf("(1) Kh = %.1f x 10**-3",(kh*10**3))
printf("\n    Kv = %.1f x 10**-3",(kv*10**3))
printf("\n(2) F(X) = %.2f dB",FX)
