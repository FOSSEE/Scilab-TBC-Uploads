clc
clear
//DATA GIVEN
V1=0.216;                     //gas consumption in m^3/min
P1=75;                        //gas temperature in mm of water
T1=17+273;                    //gas tempertaure in K
m=2.84;                       //air consumption in kg/min
Ta=17+273;                    //air tempertaure in K
br=745;                       //barometer reading in mm of Hg
D=0.25;                       //bore of engine cylinder in m
L=0.475;                      //stroke length in m
N=240;                        //engine speed in R.P.M.
R=287;                        //gas constant for air in J/kgK
n=1;                          //no. of cylinders
k=1;                          //for 2-stroke cylinder

P1=br+P1/13.6;                //pressure of the gas
//at NTP
P2=760;                       //mm of Hg
T2=0+273;                     //in K
//P1*V1/T1=P2*V2/T2
V2=P1*V1*T2/(P2*T1);          //volume of gas used at NTP in m^3
Vg=V2/(N/2);                  //gas used per stroke in m^3

//PV=mRT
P2=1.0132*10^5;
V=m*R*T2/P2;                  //volume occupied by air in m^3/min
Va=V/(N/2);                   //air used per stroke in m

Vmix=Vg+Va;                   //mixture of gas and air in m^3

//ETAvol=(actual volume of mixture drawn per stroke at NTP)/(swept volume of system)
ETAvol=Vmix/((%pi/4)*D^2*L);

printf(' The Volumetric efficiency is: %3.3f or %3.1f percent. \n',ETAvol,(ETAvol*100));
