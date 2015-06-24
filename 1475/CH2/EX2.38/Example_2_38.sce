// Example 2.38 A sample of 100 dry battery 
clc;
clear;
//disp(3,"s.d =",12,"Mean =");
disp((0.5-0.3413)*100,"Hence percentage of battery cells expected to have life is (0.5-0.3413)*100",(15-12)/3,"Proportion of battery cell with life more than 15 hours= Area under standard normal curve between the vertical lines at the corresponding values of (15-12)/3 = ");
disp((0.5-0.4772)*100,"Hence percentage of battery cells expected to have life is (0.5-0.4772)*100",(6-12)/3,"Proportion of battery cell with life less than 6 hours= Area under standard normal curve between the vertical lines at the corresponding values of (6-12)/3 = ");
disp((2*0.2487)*100,"Hence percentage of battery cells expected to have life is (2*0.2487)*100",(10-12)/3,"and",(14-12)/3,"Proportion of battery cell with life between 10 and 14 hours= Area under standard normal curve between the vertical lines at the corresponding values of (10-12)/3 and (14-12)/3= ");
