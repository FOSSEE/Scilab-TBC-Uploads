//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-7, Example 5, Page 181
//Title: Comparing Predictions for k*
//==========================================================================================================
clear
clc

//INPUT
rhog=1.217;//Density of gas in kg/m^3
myu=1.8E-5;//Viscosity of gas in kg/m s
umf=0.11;//Velocity at minimum fluidization condition in m/s
rhos=2000;//Density of solid in kg/m^3
uo=1.0;//Superficial gas velocity in m/s
g=9.80;//Acceleration due to gravity in m/s^2
dp=[30;40;50;60;80;100;120];//Diameter of particle in micrometer
uti=[0.066;0.115;0.175;0.240;0.385;0.555;1.0];//Terminal velocity of particles in m/s

//CALCULATION
n=length(dp);
i=1;
while i<=n
    //Using Yagi & Aochi's correlation
    Ret(i)=(rhog*(uti(i))*dp(i)*10^-6)/myu;
    kistar1(i)=((myu*((uo-uti(i))^2))/(g*(dp(i)*10^-6)^2))*(0.0015*(Ret(i)^0.5)+(0.01*(Ret(i)^1.2)));
    //Using Wen & Hasinger's correlation
    kistar2(i)=(((1.52E-5)*((uo-uti(i))^2)*rhog)/(g*dp(i)*10^-6)^0.5)*(Ret(i)^0.725)*((rhos-rhog)/rhog)^1.15;
    //Using Merrick & Highley's correlation
    kistar3(i)=uo*rhog*(0.0001+130*exp(-10.4*((uti(i)/uo)^0.5)*((umf/(uo-umf))^0.25)));
    //Using Geldart's correlation
    kistar4(i)=23.7*uo*rhog*exp(-5.4*(uti(i)/uo));
    //Using Zenz & Weil's procedure
    x1(i)=(uo^2)/(g*(dp(i)*10^-6)*rhos^2);//Computation of value of x-axis for Fig.(6), page 175)
    y1=[12.2;8.6;6.4;4.9;2.75;1.8;1.2];//Value of y-axis corresponding to each value of x-axis
    kistar5(i)=y1(i)*rhog*uo;
    //Using Gugnoni & Zenz's procedure
    x2(i)=(uo-uti(i))/((g*dp(i)*10^-6)^0.5);//Computation of value of x-axis for Fig.(6), page 175)
    y=[5.8;5.4;3.2;2.8;1.3;0.6;0];//Value of y-axis corresponding to each value of x-axis
    kistar6(i)=y(i)*rhog*uo;
    i=i+1;
end

i=1;
printf('dp(micrometer)');
printf('\tYagi & Aochi');
printf('\tWen & Hashinger');
printf('\t\tMerrick & Highley');
printf('\tGeldart et al.');
printf('\t\tZenz & Well');
printf('\t\tGugnoni & Zenz');
while i<=n
    mprintf('\n%f',dp(i));
    mprintf('\t%f',kistar1(i));  
    mprintf('\t%f',kistar2(i));
    mprintf('\t\t%f',kistar3(i));
    mprintf('\t\t%f',kistar4(i));
    mprintf('\t\t%f',kistar5(i));
    mprintf('\t\t%f',kistar6(i));
    i=i+1;
end    

//Note: There is huge deviation of the calculated answer and the answer given in the textbook for the correlation of Merrick & Highley.  There is a contradiction in the correlation used in the problem and the one given in page 179. 
//We tried to retrieve the original paper i.e. D.Merrick and J.Highley, AICHE J., 6, 220(1960). But the effort was not fruitful.

//====================================END OF PROGRAM ====================================================