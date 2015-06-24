

//example4.49
//calculate fi index and time of rainfall excess
clc;funcprot(0);
//given
T=[1:1:12];      //time from start
r=[1.8 2.6 7.8 3.9 10.6 5.4 7.8 9.2 6.5 4.4 1.8 1.6];  //increamental rainfall
R=24.4;        //total run-off
s=0;
for i=1:12
    s=s+r(i);
end
ti=s-R;

//first trial
tr=7;   //assumed
ti=s-R-r(1)-r(2)-r(4)-r(11)-r(12);
fi=ti/tr;
for i=1:12
    P(i)=r(i)-fi;
    if (P(i)<0) then
        P(i)=0;
    end
end
mprintf("Time(h)          rainfall excess.");
for i=1:12
    mprintf("\n%f          %f",T(i),P(i));
end
mprintf("\n\nfi index=%f cm/hr.",fi);

