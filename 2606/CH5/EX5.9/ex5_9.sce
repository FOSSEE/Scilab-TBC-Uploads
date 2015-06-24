//Page Number: 5.26
//Example 5.9
clc;
//Given,
//m(t)=10cos(2000*pi*t)cos(8000*pi*t)
//or 5 cos (6000*pi*t) +5*cos(10000*pi*t)
//(a) Minimum sampling rate
//we have
fM=5000; //Hz
fs=2*fM;
disp('Hz',fs,'Minimum sampling rate');

//(b)bandpass sampling theoram
fu=fM;
fb=fM-3000; //Hz
//As fu/fb is 2.5
//We have
k=2;
fs2=(2*fu)/k;
disp('Hz',fs2,'Minimum sampling rate by sampling theoram');



