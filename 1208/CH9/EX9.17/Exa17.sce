//Exa 17
clc;
clear;
close;
// given data :
STs=1600;//in hours
STu=2400;//in hours
ATs=2500;//in hours
ATu=2500;//in hours
SRs=0.50;//in Rs/Hour
SRu=0.60;//in Rs/Hour
ARs=0.40;//in Rs/Hour
ARu=0.50;//in Rs/Hour
//Labour Cost variance
LCVs=(STs*SRs)-(ATs*ARs)
LCVu=(STu*SRu)-(ATu*ARu)
//Labour Efficiency variance
LEVs=SRs*(STs-ATs);// in Rs
LEVu=SRu*(STu-ATu);// in Rs
//Labour Rate variance
LRVs=ATs*(SRs-ARs);// in Rs
LRVu=ATu*(SRu-ARu);// in Rs
//Labour Mix variance
TAMT=ATs+ATu;// total of actual mix time
TSMT=STs+STu;// total of standard mix time
RSTs=(STs*TAMT)/TSMT
RSTu=(STu*TAMT)/TSMT
LMVs=SRs*(RSTs-ATs);// in Rs
LMVu=SRu*(RSTu-ATu);// in Rs
//Labour Sub Efficiency variance
LSEVs=SRs*(STs-RSTs);// in Rs
LSEVu=SRu*(STu-RSTu);// in Rs
disp("Labour Cost variance :")
disp(LCVs,"Labour Cost variance LCVs: ")
disp(LCVu,"Labour Cost variance LCVu: ")
disp(LCVs+LCVu,"Labour Cost variance :")
disp("Labour Efficiency variance :")
disp(LEVs,"Labour Efficiency variance LEVs: ")
disp(LEVu,"Labour Efficiency variance LEVu: ")
disp(LEVs+LEVu,"Labour Efficiency variance :")
disp("Labour Rate variance :")
disp(LRVs,"Labour Rate variance LRVs: ")
disp(LRVu,"Labour Rate variance LRVu: ")
disp(LRVs+LRVu,"Labour Rate variance :")
disp("Labour Mix variance :")
disp(LMVs,"Labour Mix variance LMVs: ")
disp(LMVu,"Labour Mix variance LMVu: ")
disp(LMVs+LMVu,"Labour Mix variance :")
disp("Labour Sub Efficiency variance :")
disp(LSEVs,"Labour Sub Efficiency variance LMVs: ")
disp(LSEVu,"Labour Sub Efficiency variance LMVu: ")
disp(LSEVs+LSEVu,"Labour Sub Efficiency variance :")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ");