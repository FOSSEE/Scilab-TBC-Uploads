//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-7, Example 3, Page 181
//Title: Entrainment from Beds with a Wide Size Distribution of Solids
//==========================================================================================================
clear
clc

//INPUT
rhog=5.51;//Density of gas in kg/m^3
rhos=1200;//Density of solid in kg/m^3
uo=0.61;//Superficial gas velocity in m/s
g=9.80;//Acceleration due to gravity in m/s^2
dp=[10;30;50;70;90;110;130];//Diameter of particle in micrometer
p=[0;0.0110;0.0179;0.0130;0.0058;0.0020;0];
pi=3.142857;
dt=6;

//CALCULATION
n=length(dp);
i=1;
while i<=n
    x(i)=(uo^2)/(g*(dp(i)*10^-6)*rhos^2);//Computation of value of x-axis for Fig.(6), page 175)
    i=i+1;
end
y=[40;12;6;3.2;2.;1.3;1];//Value of y-axis corresponding to each value of x-axis
y1 = y .* p;
i=1;
k=0;
while i<n
    y1(i)=(y(i)*p(i));
    k=k+((0.5)*(dp(i+1)-dp(i))*(y1(i+1)+y1(i)));//Integration using Trapezoidal rule
    i=i+1;
end
rhosbar=k*rhog;//Computation of solid loading
te=(pi/4)*(dt^2)*rhosbar*uo;//Computation of total entrainment

//OUTPUT
mprintf('\nSolid loading =%fkg/m^3',rhosbar);
mprintf('\nTotal Entrainment =%fkg/s',te);

//====================================END OF PROGRAM ======================================================