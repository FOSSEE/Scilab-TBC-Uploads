//Ex3_10
clc
TJmax=175
disp("TJmax= "+string(TJmax)+ "degree celsius")  //maximum allowed junction temperature
theta=0.5
disp("theta= "+string(theta)+ "degree celsius/mW ")  //thermal resistances b/w junction to ambient
change_T=TJmax-25//temperature difference
PDmax=change_T/theta
disp("at 25 degree celsius,PDmax=(TJmax-25 )/theta = "+string(PDmax)+ " mW ")  //maximum allowed power dissipation at TA=25 degree celsius
change_T=TJmax-75
PDmax2=change_T/theta
disp("at 75 degree celsius,PDmax2= (TJmax-75)/theta = "+string(PDmax2)+ " mW ")  //maximum allowed power dissipation at TA=75 degree celsius
