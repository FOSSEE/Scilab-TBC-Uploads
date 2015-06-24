//ques6
//A Questionable Claim for a Refrigerator
clear
clc
Th=75+460;//temperature of reservior in R
Tl=35+460;//temperature of sink in R
COPr=1/((Th/Tl-1));//coefficient of performance of refrigerator 
printf('Coefficient of performance of refrigerator = %.1f ',COPr);