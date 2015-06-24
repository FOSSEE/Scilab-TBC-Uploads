//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-13, Example 3, Page 332
//Title: Effect of Particle Size on h
//==========================================================================================================

clear
clc

//INPUT
rhos=2700;//Density of solids in kg/m^3
Cps=755;//Specific heat capacity of the solid in J/kg K
ks=1.2;//Thermal conductivity of solids in W/m k
kg=0.028;//Thermal concuctivity of gas in W/m k
ephsilonmf=0.476;//Void fraction at minimum fluidization condition
dp1=10E-3;//Particle size for which h=hmax in m
hmax=250;//Max. heat transfer coefficient in W/m^2 K 
nw=5;//Bubble frequency in s^-1
delta=0.1;//Fraction of bed in bubbles
deltaw=0.1;//Fraction of bed in bubbles in wall region
dp=2E-3;//Diameter of particle in m

//CALCULATION
x=ks/kg;
phib=0.11;
phiw=0.17;
ke=ephsilonmf*kg+(1-ephsilonmf)*ks*[1/((phib*(ks/kg))+(2/3))];//Effective thermal conductivity of bed from Eqn.(3)
hpacket=1.13*[ke*rhos*(1-ephsilonmf)*Cps*nw/(1-deltaw)]^0.5;//Heat transfer coefficient for the packet of emulsion from Eqn.(11)
ephsilonw=ephsilonmf;//Void fraction in the wall region
kew=ephsilonw*kg+(1-ephsilonw)*ks*[(phiw*(ks/kg)+(1/3))^-1];//Effective thermal conductivity in the wall region with stagnant gas from Eqn.(4)
y=(2*kew/dp1)+(hmax*hpacket)/(((1-deltaw)*hpacket)-hmax);//Calculating the term alphaw*Cpg*rhog*uo from Eqn.(16) by rearranging it
h=(1-deltaw)/((2*kew/dp+y*(dp/dp1)^0.5)^-1+hpacket^-1);//Heat transfer coeeficient from Eqn.(11) by using the value of y 

//OUTPUT
mprintf('\nThe heat transfer coefficient for paricle size of %fm = %fW/m^2 K',dp,h);

//====================================END OF PROGRAM ======================================================