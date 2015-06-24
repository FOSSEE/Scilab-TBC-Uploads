//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-4, Example 2, Page 108
//Title: Design of a Tuyere Distributor
//==========================================================================================================
clear
clc

//INPUT
lor=0.1;//Minimum allowable tuyere spacing in m
uorm=30;//Maximum allowable jet velocity from the tuyere in m/s
uo=0.4;//Superficial velocity of gas in m/s
uor=30.2;//Gas velocity through orifice,from Exa 1, in m/s
Cd=0.6;//Dicharge coefficient from Exa 1
rhog=3.6//Density of gas in kg/m^3
pi=3.1428;

//CALCULATION
Nor=1/(lor^2);//Calculation of number of orifices per unit area by assuming minimum spacing for tuyeres
dor={(4/pi)*(uo/uor)*(1/Nor)}^0.5;//Calculation of diameter of inlet orifiec by using Eqn.(13)

//Computation of diameter of hole for different number of holes per tuyere
q=(lor^2)*uo;//Volumetric flow rate in m^3/s
Nh=[8;6;4];//Different number of holes per tuyere
n=length(Nh);
i=1;
while i<=n
    dh(i)=((((q/Nh(i))*(4/pi))/uorm)^0.5);//Calculation of diameter of holes
    i=i+1;
end
deltaph=(rhog/2)*((uor/Cd)^2);

//OUTPUT
printf('\nNumber of holes(number of holes/tuyeres)');
printf('\tDiameter of hole(m)');
j=1;
while j<=n
    mprintf('\n%f',Nh(j));
    mprintf('\t\t\t\t\t%f',dh(j));
    j=j+1;
end
printf('\nThe design chosen is as follows');
printf('\n\tTuyeres are as shown in Fig.2(b),page 97');
mprintf('\n\tNumber of holes = %f(Since rectangular pitch is chosen for tuyeres)',Nh(2));
mprintf('\n\tDiameter of hole = %fm',dh(2));
mprintf('\n\tDiameter of incoming high-pressure-drop orifice = %fm ID',dor);
printf('\nChecking the pressure drop in tuyeres');
mprintf('\nSince pressure drop of %fPa gives sufficiently high distributor pressure drop as seen in Exa.1, use of inlet orifice can be dispensed.',deltaph);

//====================================END OF PROGRAM ======================================================