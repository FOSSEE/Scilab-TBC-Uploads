//To Determine the fault components of the system
//Page 606
clc;
clear;
L=4; //Total Length of the cable
Lov=3;//Length of Overhead Cable
Lu=L-Lov; //Length of Underground Cable
Nct=2; //Number of circuit terminations
T=10; //No of years for which the record is shown

Fov=2; // Faults Per Mile of the Over Head Cable
Fu=1; //Faults Per Mile of The Underground cable

Ct=0.3/100// Cable Termination Fault Rate

//Repair Time
Tov=3; //Over Head
Tu=28; //Underground
Tct=3; //Cable Termination

lamdaFDR= (Lov*Fov/T)+(Lu*Fu/T)+(2*Ct); //Total Annual Fault Rate

rFDR=((Tov*Lov*Fov/T)+(Tu*Lu*Fu/T)+(2*Ct*Tct))/lamdaFDR; //Annual Fault Restoration Time

mFDR=8760-rFDR; //Annual Mean Time of Failure

UFDR=rFDR*100/(rFDR+mFDR); //Unavailability of Feeder
AFDR=100-UFDR; //Availability of Feeder

printf('a) The Total Annual Fault Rate is %g faults per year\n',lamdaFDR)
printf('b) The Annual Fault Restoration Time is %g hours per fault per year\n',rFDR)
printf('c) Unavailability of the feeder is %g percent\n',UFDR)
printf('d) Availability of the feeder is %g percent\n',AFDR)
