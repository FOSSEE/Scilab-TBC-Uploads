clear
//
//
//

//Variable declaration    
lamda_m=4753*10^-10;      //wavelength(m)
lamda=14*10^-6;      //wavelength(m)
b=0.2898*10^-2;      //value of constant(mK)

//Calculations
Ts=b/lamda_m;     //temperature of sun(K)    
Tm=b/lamda;       //temperature of moon(K)

//Result
printf("\n temperature of sun is %0.0f K",Ts)
printf("\n temperature of moon is %0.0f K",Tm)
