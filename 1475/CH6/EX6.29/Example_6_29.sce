// Example 6.29 A certain company estimates its average monthly sales in a particular year
clc;
clear;
SI=[78 75 100 126 138 121 101 104 99 103 80 75];
Total=sum(SI);
SE=SI./100;
ES=SE.*20;
disp(ES,"Estimated Sales in lakhs =",SE,"Seasonal Effect =",Total,"Sum of seasonal index =",SI,"Seasonal Index =");
