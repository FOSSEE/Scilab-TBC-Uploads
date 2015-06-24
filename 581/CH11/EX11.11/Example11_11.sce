
clear;
clc;

printf("\t Example 11.11\n");
T1=300;          //temp. of helium-water tube,K
h=0.4;    //height of vertical wall,m
m=0.087*10^-3;    //flow rate of helium,kg/(m^2*s)
//this is a uniform flux natural convection problem.

Mhes=0.01;    // assuming the value of mass fraction of helium at the wall to be 0.01
Mhef=Mhes/2;    //film composition

af=1.141;    //film density,kg/m^3
as=1.107;    //wall density,kg/m^3
Dha=7.119*10^-5;    //diffusion coefficient,m^2/s
u=1.857*10^5;    //fil,m viscosity at 300K,kg/(m*s)
Sc=(u/af)/Dha;    //schimidt no.
aa=1.177;    //air density,kg/m^3
Ra1=9.8*(aa-as)*m*h^4/(u*af*Dha^2*Mhes);    //Rayleigh no.

Nu=6/5*(Ra1*Sc/(4+9*Sc^0.5+10*Sc))^(1/5);        //approximate nusselt no.
s=m*h/(af*Dha*Nu);    //average concentration of helium at hte wall

//thus we have obtained an average wall concentration 14 oercent higher than our initial guess of Mhes.we repeat this calclations with revised values of densities to obtain Mhes = 0.01142

printf(" average conentration of helium at the wall is 0.01142 ,since the result is within  0.5 percent of our second guess, a third iteration is not needed.");
//end
