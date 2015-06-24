

//example 4.24
//calculate average infiltration index
clc;funcprot(0);
//given
r=[2.0 2.5 7.6 3.8 10.6 5.0 7.0 10.0 6.4 3.8 1.4 1.4];     //rainfall depths
R=25.5;                                                    //total rum-off
s=0;
for i=1:12
    s=s+r(i);
end
tf=s-R;
af=tf/12;
//rainfall is less than average infiltration in1st,2nd,11th and 12th hours

f=(tf-r(1)-r(2)-r(11)-r(12))/8;
f=round(f*10)/10;
mprintf("average infiltration index=%f cm/hour.",f);

