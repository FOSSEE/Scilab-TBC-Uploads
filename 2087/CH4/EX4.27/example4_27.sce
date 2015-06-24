

//example 4.27
//calculate rainfall excess
clc;funcprot(0);
//given
A=316;         //drainage area
B=17;          //base flow
t=6;
O=[17.0 113.2 254.5 198.0 150.0 113.2 87.7 67.9 53.8 42.5 31.1 22.6 17.0];    //ordinates of storm hydrograph
for i=1:13
    Or(i)=O(i)-B;                 //ordinates of direct run-off
    Oh(i)=Or(i)/6.477;            //ordinates of unit hydrograph
end
s=0;
for i=1:13
    s=s+Or(i);
end
re=s*60*60*t/(A*10000);
re=round(re*1000)/1000;
mprintf("rainfall excess=%f cm.",re);
