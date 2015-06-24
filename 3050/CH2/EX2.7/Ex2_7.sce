//calculating percentage S and N
//Example 2.7
clc
clear
wt1=2.6//weight of coal taken for quantitative analysis in gm
wt=1.56//weight of coal sample taken in gm
v=50-6.25//volume of H2SO4 used
N=0.1//normality
m=0.1755//wt of BaSO4 ppt. obtained 
%n=(v*N*1.4)/(wt)//percentage of nitrogen
%su=(m*32*100)/(wt1*233)//percentage of sulphur
printf('Thus (i)Percentage of nitrogen = %2.3f percent',%n)
printf('\n(ii)Percentage of sulphur =%2.3f percent',%su)
