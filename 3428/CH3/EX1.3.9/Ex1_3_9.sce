//Section-1,Example-4,Page no.AC-243
//To calculate Total hardness of given sample of water in ppm.
clc;
V_1=30  //Volume of EDTA solution reqd. by 20 ml of standard hard water.
V_2=10  //Volume of water sample that requires 10 ml EDTA.
E_1=30/V_1        //weight of CaCO3 in 1mL of EDTA(mg).
Total_H=(10/V_2)*1000
disp(Total_H,'Total hardness of water(ppm)')
