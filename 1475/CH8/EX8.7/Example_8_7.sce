//Example 8.7 Calculate General fertility Rate
clc;
clear;
No_of_female=4300;
No_of_Women=[25000 24000 20000 16000 15000 12000 8000];
No_of_Live_Births=[1140 3000 2740 1360 600 150 10];
Total_No_of_Women=sum(No_of_Women);
Total_No_of_Live_Births=sum(No_of_Live_Births);
G_F_R=Total_No_of_Live_Births/Total_No_of_Women;
S_F_R=No_of_Live_Births./No_of_Women;
T_F_R=sum(S_F_R)*5;
G_R_R=(No_of_female/Total_No_of_Live_Births)*T_F_R;
disp(G_R_R,"Gross Reproduction Rate =",T_F_R,"Total Fertility Rate =",S_F_R,"Specific Fertility Rate =",G_F_R,"General Fertility Rate =",Total_No_of_Live_Births,"Total_No_of_Live_Births",Total_No_of_Women,"Total_No_of_Women");
