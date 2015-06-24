

//example4.19
//calculate fi index and time of rainfall excess
clc;funcprot(0);
//given
T=[1:1:9];      //time from start
r=[0.7 1.4 2.4 3.7 2.9 2.6 1.7 0.8 0.5];  //increamental rainfall
R=9.3;        //total run-off
s=0;
for i=1:9
    s=s+r(i);
end
ti=s-R;

//first trial
tr=9;   //assumed
fi1=ti/tr;
//this makes 1st,8th and 9th hour ineffective

//second trial
tr=6;
ti=s-R-r(1)-r(8)-r(9);
fi=ti/tr;
for i=1:9
    P(i)=r(i)-fi;
    if (P(i)<0) then
        P(i)=0;
    end
end
mprintf("Time(h)          rainfall excess.");
for i=1:9
    mprintf("\n%f          %f",T(i),P(i));
end
mprintf("\n\nfi index=%f cm/hr.",fi);
mprintf("\n\ntime of rainfall excess=%i hours..",tr);
