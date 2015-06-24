//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-13, Example 2, Page 332
//Title: Effect of Gas Properties on h
//==========================================================================================================

clear
clc

//INPUT
dp=80;//Particle size in micrometer
rhos=2550;//Density of solids in kg/m^3
Cps=756;//Specific heat capacity of the solid in J/kg K
ks=1.21;//Thermal conductivity of solids in W/m k
kg=[0.005;0.02;0.2];//Thermal concuctivity of gas in W/m k
ephsilonmf=0.476;//Void fraction at minimum fluidization condition

//CALCULATION
delta=0.5*(0.1+0.3);//For a gently fluidized bed
nw=3;//Bubble frequency in s^-1 from Fig.(5.12) at about 30cm above the distributor
n=length(kg);
i=1;
while i<=n
    x(i)=ks/kg(i);//To find different values of ks/kg
    i=i+1;
end
phib=[0.08;0.10;0.20];//From Fig.(15) for different values of ks/kg
i=1;
while i<=n
    ke(i)=ephsilonmf*kg(i)+(1-ephsilonmf)*ks*[1/((phib(i)*(ks/kg(i)))+(2/3))];//Effective thermal conductivity of bed from Eqn.(3)
    h1(i)=1.13*[ke(i)*rhos*(1-ephsilonmf)*Cps*nw*(1-delta)]^0.5;//Heat transfer coefficinet from Eqn.(18)
    i=i+1;
end

//OUTPUT
printf('\nThermal conductivity of Gas(W/m K))');
printf('\tMax. heat transfer coefficient(W/m^2 k)');
i=1;
while i<=n
    mprintf('\n%f',kg(i));
    mprintf('\t\t\t\t%f',h1(i));
    i=i+1;
end

//====================================END OF PROGRAM ======================================================