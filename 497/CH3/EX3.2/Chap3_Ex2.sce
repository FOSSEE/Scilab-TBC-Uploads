//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-3, Example 2, Page 76
//Title: Estimation of Minimum fluidizing velocity
//==========================================================================================================
clear
clc

//INPUT
ephsilon=0.55;//Void fraction of bed
rhog=0.0012;//Density of gas in g/cc
myu=.00018;//Viscosity of gas in g/cm s
dpbar=0.016;//Mean diameter of solids in centimeter
phis=0.67;//Sphericity of solids
rhos=2.6;//Density of solids in g/cc
g=980;//Acceleration due to gravity in square cm/s^2

//CALCULATION
//Computation of umf using the simplified equation for small particles
umf=((dpbar^2)*(rhos-rhog)*g*(ephsilon^3)*(phis^2))/(150*myu*(1-ephsilon));//Simplified equation to calculate minimum fluidizing velocity for small particles Eq.(21)
Re=(dpbar*umf*rhog)/myu;//To calculate Reynolds number for particle

//Computation of umf if neither void fraction of bed nor sphericity is known
c1=28.7; c2=0.0494;//Value of constants from Table 4, page 70
umf1=(myu/(dpbar*rhog))*(((c1^2)+((c2*(dpbar^3)*rhog*(rhos-rhog)*g)/(myu^2)))^0.5-c1);//Equation to calculate minimum fluidizing velocity for coarse particles Eq.(25)
err=((umf-umf1)/umf)*100;//Calculation of error from experimental value

//OUTPUT
if Re<20 then 
    mprintf('\nThe particle Reynolds no = %f',Re)
    printf('\nThe simplified equation used for calculating minimum fluidizing velocity is valid.');
end
mprintf('\nThe minimum fluidizing velocity by simplified equation for small particles = %fcm/s',umf);
mprintf('\nThe minimum fluidizing velocity by equation for coarse partilces = %fcm/s',umf1);
mprintf('\nThis value is %f percent below the experimentally reported value.',err);

//====================================END OF PROGRAM ======================================================