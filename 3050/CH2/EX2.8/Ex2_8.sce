//calculating percentage S
//Example 2.8
clc
clear
wt=0.5//weight of coal taken for quantitative analysis in gm
m=0.05//wt of BaSO4 ppt. obtained 
%su=(m*32*100)/(wt*233)//percentage of sulphur
printf('Thus Percentage of sulphur =%2.3f percent',%su)
