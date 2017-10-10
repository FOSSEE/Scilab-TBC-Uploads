//Example 4.19
clear;
clc;

//Given
delHfus=15648;//Latent heat of fusion in J mol^-1
Tm=386.6;//melting point in K
delHvap=25522;//latent heat of vapourization in J mol^-1
Cp=81.588;//heat capacity in J K^-1 mol^-1
Tb=457;//boiling point in K
T=298;

//To determine the entropy change
delS1=(54.684*log(Tm/T))+(13.431*0.0001*(Tm-T))-(298*13.431*0.0001*log(Tm/T));//entropy change in 1st step in J K^-1
delS2=delHfus/Tm;//entropy change in 2nd step in J K^-1
delS3=Cp*log(Tb/Tm);//entropy change in 3rd step in J K^-1
delS4=delHvap/Tb;//entropy change in final step in J K^-1
delS=delS1+delS2+delS3+delS4;//total entropy change in J K^-1
mprintf('Change in entropy = %f J K^-1 mol^-1',delS);
//end