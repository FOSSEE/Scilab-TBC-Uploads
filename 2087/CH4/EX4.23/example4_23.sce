

//example 4.23
//calculate fi index
clc;funcprot(0);
//given
r=[0 8 22 74 92 105 114 120];      //raccumulated rainfall
T=[0 2 4 6 8 10 12 14];            //time for start of rainfall
V=2D6;                             //volume of run-off
A=40;                              //catchment area
tr=14;                             //duration of rainfall

d=V*1000/(40*1000000);

l=r(8)-d;
W=l/tr;
for i=2:8
    I(i)=r(i)-r(i-1);           //incremental rainfall
end

//rainfall excess is available in 4 time intervals of 2 hrs
tre=8;
fi=(l-I(2)-I(7)-I(8))/tre;
fi=round(fi*100)/100;
mprintf("fi index=%f mm/hr.",fi);
