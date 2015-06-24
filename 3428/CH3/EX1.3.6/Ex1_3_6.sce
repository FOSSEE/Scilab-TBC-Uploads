//Section-1,Example-1,Page no.AC-241
//To calculate Temporary and Permanent hardness of given sample of water.
clc;
V_1=28   //Volume of EDTA solution reqd. by 100 ml of standard hard water.
V_2=100  //Volume of water sample that requires 35 ml EDTA.
E_1=28/V_1       //weight of CaCO3 in 1mLof EDTA(mg).
Total_H=(35/V_2)*1000     //Total hardness in ppm.
P_H=(10/100)*1000
disp(P_H,'Permanent hardness of water(ppm)')
T_H=Total_H-P_H
disp(T_H,'Temporary hardness of water(ppm)')
