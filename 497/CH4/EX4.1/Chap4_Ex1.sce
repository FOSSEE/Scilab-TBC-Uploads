//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-4, Example 1, Page 106
//Title: Design of a Perforated Plate Distributor
//==========================================================================================================
clear
clc

//INPUT
dt=4;//Vessel diameter in m
Lmf=2;//Length of the bed in m
ephsilonmf=0.48;//Void fraction of bed
rhos=1500;//Density of solid in kg/m^3
rhog=3.6;//Density of gas in kg/m^3
myu=2E-5;//Viscosity of gas in kg/m s
po=3;//Pressure of inlet gas in bar
uo=0.4;//Superficial velocity of gas in m/s
uorm=40;//Maximum allowable jet velocity from holes in m/s
g=9.80;//Acceleration due to gravity in m/s^2
gc=1;
pi=3.1428;

//CALCULATION
//Computation of minimum allowable pressure drop through the distributor
deltapb={(1-ephsilonmf)*(rhos-rhog)*g*Lmf}/gc;//Calculation of pressure drop in bed using Eqn.(3.17)
deltapd=0.3*deltapb;//Calculation of pressure drop in distributor using Eqn.(3)

//Computation of orifice coefficient
Ret=(dt*uo*rhog)/myu;
if    Ret>=3000 then Cd=0.60;
elseif    Ret>=2000 then Cd=0.61;
elseif    Ret>=1000 then Cd=0.64;
elseif    Ret>=500  then Cd=0.68;
elseif    Ret>=300  then Cd=0.70;
elseif    Ret>=100  then Cd=0.68;
end

//Computation of gas velocity through orifice
uor=Cd*((2*deltapd)/rhog)^0.5;//Calculation of gas velocity through orifice by using Eqn.(12)
f=(uo/uor)*100;//Calculation of fraction of open area in the perforated plate 


//Computation of number of orifices per unit area of distributor
dor=[0.001;0.002;0.004];//Different orifice diameters in m
n=length(dor);
i=1;
while i<=n
    Nor(i)=(uo*4)/(pi*uor*(dor(i))^2);//Calculation of number of orifices by using Eqn.(13)
    i=i+1;
end
    
//OUTPUT
mprintf('\nThe pressure drop in bed:%fPa',deltapb);
mprintf('\nThe minimum allowable pressure drop in distributor:%fPa',deltapd);
if uor<uorm then mprintf('\nThe gas veleocity of %fm/s is satisfactory',uor);
    else mprintf('\nThe gas veleocity of %fm/s is not satisfactory',uor);
end
if f<10 then mprintf('\nThe fraction of open area of %f percent is allowable',f);
    else mprintf('\nThe fraction of open area of %f percent is not allowable',f);
end   
printf('\nDiameter of orifice(m)');
printf('\tNumber of orifices per unit area(per sq.m)');
j=1;
while j<=n
    mprintf('\n%f',dor(j));
    mprintf('\t\t%f',Nor(j));
    j=j+1;
end
printf('\nThis number can be rounded off.');
printf('\nSince orifices that are too small are liable to clog and those that are too large cause uneven distribution of gas, we choose orifice of diameter %fm',dor(2));

//====================================END OF PROGRAM ======================================================