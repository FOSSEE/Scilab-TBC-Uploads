// Example 5.2 An Experimenter wished to study the effect of 4 fertilizers
clc;
clear;
T_Obs= 24;
T_df= 23;
df_f=3;
df_wg=20;
disp(df_wg,"the df for With in groupis (23-3)= ",df_f,"df for fertilisers (4-1)=",T_df,"Total degree of freedom (df) is (24-1)= ",T_Obs, "Total observation =");
Total_SS=6212;
F_SS=2940;
wg_SS=Total_SS-F_SS;
Ms_Fert=F_SS/3;
Ms_wg=wg_SS/20;
F=(Ms_Fert)/(Ms_wg);
disp("Since, the observed value of F (viz. 5.99) is larger than the tabulated value. Therefore, we conclude fertilizers differ significantly",F,"Observed value of F",Ms_wg,"MS within Group",Ms_Fert,"MS between Fertilizers",wg_SS,"With in Group SS ");
