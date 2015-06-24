
//To determine the Specific Energy Output Runs for Both the Cases
//Page 374
clc;
clear;
G=(1/80)*100;
W=210;
We=1.1*W;
Vm=poly(0,'Vm'); //Variable Value of The Max Velocity 
D=1.6; //Distance between Stations
Ftg=10*W*G; //Tractive Effort due to Gradient
Fta=13050; //Total Tractive Effort for Acceleration
Ftb=20445; //Total Tractive Effort for Retardation
ron=5.43; //Train Resistance when power on
rc=6.525; //Train Resistance when coasting
//Level Track
al=2;
Bl=3.2;

//Up Gradient
Vavu=40; //Average Speed
Tu=D*3600/Vavu; //Total Time Taken 
au=(Fta-Ftg)/(28.3*We); //Acceleration
Bu=(Ftb+Ftg)/(28.3*We); //Retardation
Xu=((2*Vm*Tu)-((Vm^2)*((1/au)+(1/Bu))))-(7200*D); //Polynomial Equation to Find Vm
Vmu=roots(Xu); //Numerical Value of Vm
Zu=Vmu(1)-Vmu(2); //To detemine which root to take
if(abs(Zu)+Zu==0)
    Vmu=Vmu(1);
else
    Vmu=Vmu(2);
end
Tua=Vmu/au; //Accelerating Period
Tub=Vmu/Bu; //Braking Period
Tucs=Tu-Tua-Tub; //Constant Speed Duration
Dua=Vmu*Tua/(2*3600); //Distance Travelled During Accleration in km
Dub=Vmu*Tub/(2*3600); //Distance Travelled During Braking in km
Duon=D-Dub; //Distance run with power on
SEOua=0.010726*(Vmu^2)*(We/W)/D; //Specific Energy Output during Acceleration
SEOug=27.25*G*Duon/D; //Specific Energy Output for Gradient
SEOur=0.2778*ron*9.81*Duon/D; //Specific Energy Output for resitance
TSEOu=SEOua+SEOug+SEOur; //Total Specific Output

//Down Gradient
Vavd=44; //Average Speed
Td=D*3600/Vavd; //Total Time Taken 
ad=(Fta+Ftg)/(28.3*We); //Acceleration
Bd=(Ftb-Ftg)/(28.3*We); //Retardation
Xd=((2*Vm*Td)-((Vm^2)*((1/ad)+(1/Bd))))-(7200*D); //Polynomial Equation to Find Vm
Vmd=roots(Xd); //Numerical Value of Vm
Zd=Vmd(1)-Vmd(2); //To detemine which root to take
if(abs(Zd)+Zd==0)
    Vmd=Vmd(1);
else
    Vmd=Vmd(2);
end
Tda=Vmd/ad; //Accelerating Period
Tdb=Vmd/Bd; //Braking Period
Tdcs=Td-Tda-Tdb; //Constant Speed Duration
Dda=Vmd*Tda/(2*3600); //Distance Travelled During Accleration in km
Ddb=Vmd*Tdb/(2*3600); //Distance Travelled During Braking in km
Ddon=D-Ddb; //Distance run with power on
SEOda=0.010726*(Vmd^2)*(We/W)/D; //Specific Energy Output during Acceleration
//Net Force Acting Downward due to gradient and resistance
Fnet=W*((10*G)-rc);
//Since Fnet is Postive, To run the train at constant speed brakes will have to applied therefore they cannot supply electric energy
TSEOd=SEOda; //Total Sepcific Enegy Consumption

printf('The Total Specific Energy:\n')
printf('Up Gradient : %g Whr/Tonne km\n',TSEOu)
printf('Down Gradient : %g Whr/Tonne km\n',TSEOd)
