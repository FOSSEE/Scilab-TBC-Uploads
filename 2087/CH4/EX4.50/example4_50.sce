

//example 4.50
//calculate fi index
clc;funcprot(0);
//given
r=[0.6 1.35 2.25 3.45 2.7 2.4 1.5 0.75];      //incremental rainfall
T=[1:1:8];            //time from start of rainfal
t=8;
P=15;                //total rainfall
R=8.7;              //direct run-off
W=(P-R)/t;
//since fi wil be more than W
tre=6;
fi=((P-R)-r(1)-r(8))/tre;
mprintf("fi index=%f cm/hr.",fi);
