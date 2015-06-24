

//example 4.59
//calculate ordinate of 6 hr unit hydrograph
clc;funcprot(0);
//given
O=[10 30 90 220 280 220 166 126 92 62 40 20 10];      //ordinates of 6 hr flood hydrograph
B=10;          //Base flow
for i=1:13
    r(i)=O(i)-B;           //ordinates of direct run-off
end
mprintf("Ordinates of 6 hr unit hydrograph");
u(1)=0;
for i=2:13
    u(i)=r(i)-u(i-1);          //ordinates of 6 hrs unit hydrograph
end
for i=1:13
    mprintf("\n%i",u(i));
end

