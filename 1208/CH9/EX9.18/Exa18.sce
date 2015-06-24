//Exa 18
clc;
clear;
close;
// given data :
//let s=skilled ;ss=semi skilled; u=unskilled
STs=3000;//in weeks
STss=1200;//in weeks
STu=1800;//in weeks
ATs=2560;//in weeks
ATss=1600;//in weeks
ATu=2240;//in weeks
SRs=60;//in Rs/week
SRss=36;//in Rs/week
SRu=24;//in Rs/week
ARs=65;//in Rs/week
ARss=40;//in Rs/week
ARu=20;//in Rs/week
//Labour Cost variance
LCVs=(STs*SRs)-(ATs*ARs)
LCVss=(STss*SRss)-(ATss*ARss)
LCVu=(STu*SRu)-(ATu*ARu)
//Labour Efficiency variance
LEVs=SRs*(STs-ATs);// in Rs
LEVss=SRss*(STss-ATss);// in Rs
LEVu=SRu*(STu-ATu);// in Rs
//Labour Rate variance
LRVs=ATs*(SRs-ARs);// in Rs
LRVss=ATss*(SRss-ARss);// in Rs
LRVu=ATu*(SRu-ARu);// in Rs
//Labour Mix variance
TAMT=ATs+ATu+ATss;// total of actual mix time
TSMT=STs+STu+STss;// total of standard mix time
RSTs=(STs*TAMT)/TSMT
RSTss=(STss*TAMT)/TSMT
RSTu=(STu*TAMT)/TSMT
LMVs=SRs*(RSTs-ATs);// in Rs
LMVss=SRss*(RSTss-ATss);// in Rs
LMVu=SRu*(RSTu-ATu);// in Rs
//Labour Sub Efficiency variance
LSEVs=SRs*(STs-RSTs);// in Rs
LSEVss=SRss*(STss-RSTss);// in Rs
LSEVu=SRu*(STu-RSTu);// in Rs
disp("Labour Cost variance :")
disp(LCVs,"Labour Cost variance LCVs: ")
disp(LCVss,"Labour Cost variance LCVss: ")
disp(LCVu,"Labour Cost variance LCVu: ")
disp(LCVs+LCVss+LCVu,"Labour Cost variance :")
disp("Labour Efficiency variance :")
disp(LEVs,"Labour Efficiency variance LEVs: ")
disp(LEVss,"Labour Efficiency variance LEVss: ")
disp(LEVu,"Labour Efficiency variance LEVu: ")
disp(LEVs+LEVss+LEVu,"Labour Efficiency variance :")
disp("Labour Rate variance :")
disp(LRVs,"Labour Rate variance LRVs: ")
disp(LRVss,"Labour Rate variance LRVss: ")
disp(LRVu,"Labour Rate variance LRVu: ")
disp(LRVs+LRVss+LRVu,"Labour Rate variance :")
disp("Labour Mix variance :")
disp(LMVs,"Labour Mix variance LMVs: ")
disp(LMVss,"Labour Mix variance LMVss: ")
disp(LMVu,"Labour Mix variance LMVu: ")
disp(LMVs+LMVss+LMVu,"Labour Mix variance :")
disp("Labour Sub Efficiency variance :")
disp(LSEVs,"Labour Sub Efficiency variance LMVs: ")
disp(LSEVss,"Labour Sub Efficiency variance LMVss: ")
disp(LSEVu,"Labour Sub Efficiency variance LMVu: ")
disp(LSEVs+LSEVss+LSEVu,"Labour Sub Efficiency variance :")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ");