clc,clear
printf('Example 3.5\n\n')

N2_by_N1 = 1+(20/100)
phi1_by_phi2 = N2_by_N1  //N (prop.) 1/phi as losses are negligible
I_a2_by_I_a1 =  phi1_by_phi2 //because I_a (prop.) 1/phi

I_se2_by_I_a1=0.65    //I_se2 =0.65*I_se1 =0.65*I_a1

ratio = I_a2_by_I_a1/I_se2_by_I_a1 //where ratio = 1+ R_se/R_div
Rse_by_Rdiv = ratio-1 //resistance of diverter
Rdiv_by_Rse = 1/Rse_by_Rdiv 
printf('Diverter resistance is %.0f percent of series field resistance for raising speed by 20 percent',100*Rdiv_by_Rse)
