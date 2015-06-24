//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-6, Example 3, Page 153
//Title: Scale-down of a Commercial Chlorinator
//==========================================================================================================
clear
clc

//INPUT
dpbar=53;//Average particle size in micrometer
s=[1;2];//Size of Bermuda rock in cm 
rhosbar=3200;//Average solid density of the coke-zircon mixture in kg/m^3
ephsilonm=0.5;//Void fraction for fixed bed
ephsilonf=0.75;//Void fraction for bubbling bed
rhogbar=0.64;//Average density of gas in kg/m^3
uo=14;//Superficial gas velocity in cm/s
myu=5E-5;//Viscosity of gas in kg/m s
T=1000;//Temperature in degree C
P=1;//Pressure in atm
dt=91.5;//ID of bed in cm
sh=150;//Slumped height in cm

//CALCULATION
rhog2=1.2;//Density of ambient air
myu2=1.8E-5;//Viscosity of ambient air
rhos2=rhog2*(rhosbar/rhogbar);//For the requirement of constant density ratio
m=((rhogbar*myu2)/(rhog2*myu))^(2/3);//Scale factor by usin Eqn.(16)
u2=(m^0.5)*uo;//Superficial gas velocity by using Eqn.(17)
//OUTPUT
printf('\nFor the model use');
mprintf('\n\tBed of ID %fcm\n\tSlumped bed height of %fcm\n\tPacked bed distributor consisting of %f-%fmm rock',m*dt,m*sh,m*s(1),m*s(2));
mprintf('\nFluidizing gas: ambient air at %fatm',P);
mprintf('\nSolids: \tzirconia, Average particle size=%fmicrometers',m*dpbar);
mprintf('\nEntering gas:\tSuperficial velocity=%fcm/s',u2);

//====================================END OF PROGRAM ======================================================