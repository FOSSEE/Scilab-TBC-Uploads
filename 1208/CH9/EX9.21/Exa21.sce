//Exa 21
clc;
clear;
close;
// given data :
//let m=men ;w=women; b=boys
STm=960;//in hours
STw=480;//in hours
STb=320;//in hours
ATm=1600;//in hours
ATw=400;//in hours
ATb=200;//in hours
SRm=0.80;//in Rs/hour
SRw=0.60;//in Rs/hour
SRb=0.40;//in Rs/hour
ARm=0.70;//in Rs/hour
ARw=0.65;//in Rs/hour
ARb=0.30;//in Rs/hour
IT=220;//in hours
//Labour Cost variance
LCVm=(STm*SRm)-(ATm*ARm)
LCVw=(STw*SRw)-(ATw*ARw)
LCVb=(STb*SRb)-(ATb*ARb)
//Labour Efficiency variance
LEVm=SRm*(STm-ATm);// in Rs
LEVw=SRw*(STw-ATw);// in Rs
LEVb=SRb*(STb-ATb);// in Rs
//Labour Rate variance
LRVm=ATm*(SRm-ARm);// in Rs
LRVw=ATw*(SRw-ARw);// in Rs
LRVb=ATb*(SRb-ARb);// in Rs
//Labour Mix variance
TAMT=ATm+ATb+ATw-IT;// total of actual mix time
TSMT=STm+STb+STw;// total of standard mix time
RSTm=(STm*TAMT)/TSMT
RSTw=(STw*TAMT)/TSMT
RSTb=(STb*TAMT)/TSMT
LMVm=SRm*(RSTm-ATm);// in Rs
LMVw=SRw*(RSTw-ATw);// in Rs
LMVb=SRb*(RSTb-ATb);// in Rs
//Labour Idle time variance
ITV=IT*((STm*SRm+STw*SRw+STb*SRb)/(STm+STw+STb));// in Rs
disp("Labour Cost variance :")
disp(LCVm,"Labour Cost variance LCVm: ")
disp(LCVw,"Labour Cost variance LCVw: ")
disp(LCVb,"Labour Cost variance LCVb: ")
disp(LCVm+LCVw+LCVb,"Labour Cost variance :")
disp("Labour Rate variance :")
disp(LRVm,"Labour Rate variance LRVm: ")
disp(LRVw,"Labour Rate variance LRVw: ")
disp(LRVb,"Labour Rate variance LRVb: ")
disp(LRVm+LRVw+LRVb,"Labour Rate variance :")
disp("Labour Efficiency variance :")
disp(LEVm,"Labour Efficiency variance LEVm: ")
disp(LEVw,"Labour Efficiency variance LEVw: ")
disp(LEVb,"Labour Efficiency variance LEVb: ")
disp(LEVm+LEVw+LEVb,"Labour Efficiency variance :")
disp("Labour Mix variance :")
disp(LMVm,"Labour Mix variance LMVm: ")
disp(LMVw,"Labour Mix variance LMVw: ")
disp(LMVb,"Labour Mix variance LMVb: ")
disp(LMVm+LMVw+LMVb,"Labour Mix variance :")
disp("Labour Idle time variance :")
disp(ITV,"Labour Idle time variance: ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ");
//Answer in the book is not correct of LMV
