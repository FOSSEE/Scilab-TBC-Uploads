

//example 4.60
//determine the ordinates of 1 cm-6 hour hydrograph
clc;funcprot(0);
//given
t=6;
A=450;       //catchment area
O=[5 15 40 80 60 50 25 15 5];   //ordinates of flood hydrograph
B=5;         //base flow assumed
s=0;
for i=1:9
    r(i)=O(i)-B;        //ordinates of direct run-off
s=s+r(i);
end
n=s*0.36*12/A;
mprintf("ordinates of unit hydrograph");
for i=1:9
    u(i)=r(i)/n;
    u(i)=round(u(i)*100)/100;
    mprintf("\n%f",u(i));
end

