//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-15, Example 2, Page 370
//Title: Circulation Rate when Heat Duty Controls
//==========================================================================================================

clear
clc

//INPUT
deltaHr1=1260;//Enthalpy change during endothermic reaction in kJ/kg
deltaHr2=-33900;//Enthal[y change during exothermic reaction in kJ/kg
H1=703;//Enthalpy of feed oil in kJ/kg
T1=260;//Temperature of feed oil in degree celcius
H3=1419;//Enthalpy of cracked product in kJ/kg
T3=500;//Temperature of cracked product in degree celcius
Ta=20;//Temperature of entering air in degree celcius
Cpa=1.09;//Specific heat of entering air in kJ/kg K
Cpf=1.05;//Specific heat of flue gases in kJ/kg K
Cps=1.01;//Specific heat of solids in kJ/kg K
Cpv=3.01;//Specific heat of vaporized feed in kJ/kg K
T4=[520;540;560;580;600;620;640;660];//Temperature of flue gas in degree celcius
V=22.4;//Volume of 1 mole of Carbon dioxide gas in N-m^3
M=12;//Molecular weight of carbon in kg
rho=1.293;//Density of carbon dioxide gas in kg/N-m^3
xa=0.21;//Mass fraction of oxygen in air
betac=0.07;//Mass fraction of carbon

//CALCULATION
n=length(T4);
i=1;

x2min=betac*(V*rho/(M*xa));//Minimum amount of air required for complete combustion
while i<=n
    x1(i)=(deltaHr1+0.93*H3-H1)/(Cps*(T4(i)-T3));//Fs/F1 by simplifying the overall energy balance
    x2(i)=[(0.07*(-deltaHr2)-(deltaHr1+0.93*H3-H1))/(Cpf*(T4(i)-Ta))]-0.07;//F2/F1 by simplifying the energy balance for regenerator
    if x2(i)>x2min then excess_air(i)=(x2(i)-x2min)/x2min; //Excess air used
    else excess_air(i)=0;
    end
    i=i+1;
end

//OUTPUT    
printf('\nT4(degree celcius)');
printf('\tFs/F1');
printf('\t\tF2/F1');
printf('\t\tExcess air(percentage)');
i=1;
while i<=n
    mprintf('\n%f',T4(i));
    mprintf('\t\t%f',x1(i));
    mprintf('\t%f',x2(i));
    mprintf('\t%f',excess_air(i)*100);
    i=i+1;
end

//Disclaimer: The values of F2/F1 obtained by manual calculation has close correspondance to the ones obtained as the output, whereas it deviates largely from the values given in textbook.

//====================================END OF PROGRAM ======================================================