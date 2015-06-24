//Exa 16
clc;
clear;
close;
// given data :
STa=20;//in hours
STb=25;//in hours
ATa=30;//in hours
ATb=15;//in hours
SRa=3;//in Rs/Hour
SRb=4;//in Rs/Hour
ARa=3;//in Rs/Hour
ARb=4.5;//in Rs/Hour
//Labour Cost variance
LCVa=(STa*SRa)-(ATa*ARa)
LCVb=(STb*SRb)-(ATb*ARb)
//Labour Efficiency variance
LEVa=SRa*(STa-ATa);// in Rs
LEVb=SRb*(STb-ATb);// in Rs
//Labour Rate variance
LRVa=ATa*(SRa-ARa);// in Rs
LRVb=ATb*(SRb-ARb);// in Rs
//Labour Mix variance
TAMT=ATa+ATb;// total of actual mix time
TSMT=STa+STb;// total of standard mix time
RSTa=(STa*TAMT)/TSMT
RSTb=(STb*TAMT)/TSMT
LMVa=SRa*(RSTa-ATa);// in Rs
LMVb=SRb*(RSTb-ATb);// in Rs
disp("Labour Cost variance :")
disp(LCVa,"Labour Cost variance LCVa: ")
disp(LCVb,"Labour Cost variance LCVb: ")
disp(LCVa+LCVb,"Labour Cost variance :")
disp("Labour Efficiency variance :")
disp(LEVa,"Labour Efficiency variance LEVa: ")
disp(LEVb,"Labour Efficiency variance LEVb: ")
disp(LEVa+LEVb,"Labour Efficiency variance :")
disp("Labour Rate variance :")
disp(LRVa,"Labour Rate variance LRVa: ")
disp(LRVb,"Labour Rate variance LRVb: ")
disp(LRVa+LRVb,"Labour Rate variance :")
disp("Labour Mix variance :")
disp(LMVa,"Labour Mix variance LMVa: ")
disp(LMVb,"Labour Mix variance LMVb: ")
disp(LMVa+LMVb,"Labour Mix variance :")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ");