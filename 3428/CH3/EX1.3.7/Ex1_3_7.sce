//Section-1,Example-2,Page no.AC-242
//To calculate Temporary hardness of given sample of water.
clc;
V_1=25   //Volume of EDTA solution reqd. by 20 ml of standard hard water.
V_2=100  //Volume of water sample that requires 18 ml EDTA.
E_1=300/V_1        //weight of CaCO3 in 1mL of EDTA(mg).
Total_H=E_1*18*(1000/V_2)     //Total hardness in ppm.
P_H=12*E_1*(1000/100)
disp(P_H,'Permanent hardness of water(ppm)')
T_H=Total_H-P_H
disp(T_H,'Temporary hardness of water(ppm)')
