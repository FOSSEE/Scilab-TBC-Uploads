//Section-1,Example-3,Page no.AC-243
//To calculate Total hardness of given sample of water in ppm.
clc;
V_1=25    //Volume of EDTA solution reqd. by 50 ml of standard hard water.
V_2=50  //Volume of water sample that requires 25 ml EDTA.
E_1=50/V_1        //weight of CaCO3 in 1mL of EDTA(mg).
Total_H=((25*E_1)/V_2)*1000
disp(Total_H,'Total hardness of water(ppm)')
