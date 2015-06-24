//To Determine the Design Parameters of a Distributed System
//Page 484
clc;
clear;

VPpu=1.035; //Primary Feeder Voltage per unit
TVDpu=0.0776; //Total Voltage Drop of Feeder
Vll=13.2; //Line Voltage in kV
Vlpuqsw=1;//New Voltage at the End of the Feeder due to Qsw at annual peak load
XL=0.661; //Inductive Reactance per mile
Pl=3400; //Real Power
Ql=2100; //Reactive Power
l=10; //Length of the Feeder in Miles
Lf=0.4; //Load Factor
CR=0.27; //Total Capacitor Compensation Ratio For the Above Load Factor
QNSW=CR*Ql; //Required Size of the Nonswitched capacitor bank
s=2*l/3; //Loacation of Nonswitched capacitor bank for Optimum Result
VRpu=QNSW*(2*XL*l/3)/(1000*(Vll^2)); //Per Unit Voltage Rise
VDspu=TVDpu*s*(2-(s/l))/l; //Voltage drop for the uniformaly distributed load

VSpu=VPpu-VDspu;//Feeder Voltage at 2l/3 distance

nVSpu=VSpu+VRpu; //New Voltage Rise when there is a fixed capacitor bank

Vlpu=VPpu-TVDpu; //When No Capcacitor bank is there, the voltage at the end of the feeder

nVlpu=Vlpu+VRpu; //When Capcacitor bank is there, the voltage at the end of the feeder
VRpuqsw=Vlpuqsw-nVlpu; //Required Voltage Rise

Q3phisw=1000*(Vll^2)*VRpuqsw/(XL*l); //Required Size of the Capacitor Bank

//Let us assume the 15 single phase standard 50 kVAr Capacitor Units = 750 kVAr

SQ3phisw=750; //Selected Capacitor Bank

RVRlpu=VRpuqsw*SQ3phisw/Q3phisw; //Resultant Voltage Rises at distance l
RVRspu=RVRlpu*s/l; //Resultant Voltage Rises at distance s

//At Peak Load when both the Non-Switched and Switched Capacitor Banks are on

PVspu=nVSpu+RVRspu; //Voltage at s
PVlpu=nVlpu+RVRlpu; //Voltage at l

printf('\na) The NSW Capacitor Rating is %g kVAr, Which means 2 100kVAr Capacitor Banks per phase\n',QNSW)
printf('\nb) Voltage Rise per unit is %g pu V\n',VRpu)
printf('i) When the No Capacitor Bank is Installed \n')
printf('Voltage at %g miles is %g pu V\n',s,VSpu)
printf('Voltage at %g miles is %g pu V\n',l,Vlpu)
printf('ii) When the Fixed Capacitor Bank is Installed \n')
printf('Voltage at %g miles is %g pu V\n',s,nVSpu)
printf('Voltage at %g miles is %g pu V\n',l,nVlpu)
printf('\nc) At Annual Peak Load, The Size of Capacitor Bank Required is %g\n',Q3phisw)
printf('The Voltage Rise at the Annual Load for the Required Capacitor Bank is %g pu V\n',VRpuqsw)

//Note That The Calculations are highly accurate, Rounding of Terms hasn't be emplyed
