

//example 4.18
//compute fi and W index
clc;funcprot(0);
//given
R=3.6;        //surface runoff
r=[0 1.3 2.8 4.1 3.9 2.8 2.0 1.8 0.9];  //rainfall at respective time
t=4;             //total time
s=0;
for i=3:8
    s=s+r(i)
end
fi=(s-R*2)/6;
//since fi >1.3 and <1.8
mprintf("fi index=%f cm.",fi);
mprintf("\ncomputations are correct.");

s=0;
for i=1:9
    s=s+r(i);
end
P=s/2;
Sr=0;
W=(P-R-Sr)/t;
mprintf("\nW index=%f cm/hr.",W);

