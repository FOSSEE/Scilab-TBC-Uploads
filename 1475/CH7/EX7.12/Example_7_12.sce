//Example 7.12 Given below are the data on prices of some consumer goods and the weights attached
clc;
clear;
Po=[0.50 0.60 2.00 1.80 8.00];
Pn= [0.75 0.75 2.40 2.10 10.00];
W=[2 5 4 8 1];
PR= (Pn./Po)*100;
SI=sum(PR)/5;
WAM=(sum(PR.*W)/sum(W));
disp(WAM,"Weighted Average of PR index",SI,"Simple Average of PR Index",PR, "Price Relative =");
