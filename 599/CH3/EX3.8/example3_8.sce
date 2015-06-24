
clear;
clc;
printf("\t Example 3.8\n");
Kg=7.36*10^-10;
p=1.013*10^5;
Ky=Kg*p;
//resistance in gas phase is 0.45 of total resistance & .55 in liquid phase
//(resistance in gas phase)r_gas=1/ky and (resistance in liq phase)r_liq=m'/kx
r_gas=0.45*(1/Ky);
ky=1/r_gas;
r_liq=0.55*(1/Ky);
printf("\n film based liq phase mass transfer coeff.ky is  :%f ",ky);
//from equilibrium relantionship indicates linear behaviour thus the slope of equilibrium curve is 86.45
m1=86.45;
kx=m1/r_liq;
yag=.1;
xal=(.4/64)/((99.6/18)+(.4/64));
printf("\n film based gas phase mass transfer coeff.ky is  :%f ",kx);
//slope of the line gives -kx/ky=-70.61
m2=m1;                           // since equilibrium line a straigth line m'=m''
Kx=1/(1/kx+(1/(m2*ky)));        //overall liquid phase mass transfer coefficient
printf("\n overall  liq phase mass transfer coefficient Kx is  :%f ",Kx);
// equillibrium relation is given under
p = [0.2 0.3 0.5 0.7];
a = [29 46 83 119];
i=1;
    //looping for calcullating mole fraction
while (i<5)
    x(i)= (p(i)/64)/(p(i)/64+100/18);
    y(i)= a(i)/760;                    //mole fraction plotted on y-axis
    i=i+1;                            //mole fraction plotted on x-axis
end
plot(x,y,"o-");
title("Fig.3.17,Example 8");
xlabel("X-- Concentration of SO2 in liquid phase, X(10^4)(molefraction)");
ylabel("Y-- Concentration of SO2 in gas phase, Y(molefraction)");

    //from the graph we get these values
yao=.083;        //corresponding to the value of xao=0.001128
xao=.00132;      //corresponding to the value of yag=.1
yai=.0925;      //corresponding to the perpendicular dropped from the pt(.001128,0.1)  
xai=.00123;
       
    // flux based on overall coefficient
NAo_gas=Ky*(yag-yao);
NAo_liq=Kx*(xao-xal);
printf("\n overall gas phase mass transfer flux -NAo_gas is  :%f*10^-6 kmol/m^2*s ",NAo_gas/10^-6);
printf("\n overall liq phase mass transfer flux -NAo_liq is  :%f*10^-6 kmol/m^2*s ",NAo_liq/10^-6);

    // flux based on film coefficient 
NAf_gas=ky*(yag-yai);
NAf_liq=kx*(xai-xal);
printf("\n film based gas phase mass transfer flux-NAf_gas is  :%f *10^-6 kmol/m^2*s",NAf_gas/10^-6);
printf("\n film based liq phase mass transfer flux-NAf_liq is  :%f *10^-6 kmol/m^2*s",NAf_liq/10^-6);
//end
