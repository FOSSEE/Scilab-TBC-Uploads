//Chapter-4, Illustration 6, Page 137
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//INPUT DATA
r=16;//Speed ratio
mA=4;//Module of gear A in mm
mB=mA;//Module of gear B in mm
mC=2.5;//Mosule of gear C in mm
mD=mC;//Module of gear D in mm
C=150;//Distance between shafts in mm

//CALCULATIONS
t=sqrt(r);//Ratio of teeth
T1=(C*2)/mA;//Sum of teeth of wheels A and B
T2=(C*2)/mC;//Sum of teeth of wheels C and D
TA=T1/(t+1);//Teeth of gear A
TB=T1-TA;//Teeth of gear B
TC=T2/(t+1);//Teeth of gear C
TD=T2-TC;//Teeth of gear D

//OUTPUT
mprintf('Number of teeth on gear A is %3.0f \n Number of teeth on gear B is %3.0f \n Number of teeth on gear C is %3.0f \n Number of teeth on gear D is %3.0f',TA,TB,TC,TD)









//================================END OF PROGRAM=============================================
