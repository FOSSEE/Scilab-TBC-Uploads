clc//
//
//

//Variable declaration
ni=1.5*10^16;     //carrier density(per m^3)
mew_e=0.135;     //electron mobility(m^2/Vs)
mew_h=0.048;     //hole mobility(m^2/Vs)
e=1.6*10^-19;  
Nd=10^23;      
T=300;    //temperature(K)
k=1.38*10^-23;

//Calculation
sigma=ni*e*(mew_e+mew_h);     //conductivity(ohm-1 m-1)
p=ni^2/Nd;     //hole concentration(per m^3)
sigma_ex=Nd*e*mew_e;      //conductivity(ohm-1 m-1)
x=3*k*T*log(mew_e/mew_h)/4;

//Result
printf("\n conductivity is %0.3f *10^-3 ohm-1 m-1",sigma*10^3)
printf("\n hole concentration is %0.3f per m^3",p)
printf("\n conductivity is %0.3f *10^3 ohm-1 m-1",sigma_ex/10^3)
printf("\n position of fermi level is %0.2f eV",x/(1.6*10^-19))
