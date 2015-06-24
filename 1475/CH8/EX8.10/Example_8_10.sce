// Example 8.10 Calculate Gross Reproduction Rate and Net Reproduction Rate
clc;
clear;
FP=[1558 1112 1595 1629 1627 1522 1401];
FB=[18900 71100 96900 64200 34900 10800 800];
SR=[0.914 0.899 0.884 0.868 0.852 0.834 0.8313];
NFB=FB./(FP.*1000);
NNB=NFB.*SR;
GRR=sum(NFB) * 5;
NRR=sum(NNB)*5;
disp(NRR,"Net Reproduction Rate =",GRR,"Gross Reproduction Rate =",NNB,"No. of New born Females Surviving",NFB,"No. of New born Females Surviving ",SR,"Survival Rate",FB,"Female Birth",FP,"Female Population");
