

//example 4.43
//calculate average depth of precipitation
clc;funcprot(0);
//given
A=[90 140 125 140 85 40 20];  //area of isohytes
I=[13:-2:1];                  //average isohytel interval
s=0;t=0;
for i=1:7
    s=s+A(i)*I(i);
    t=t+A(i);
end
Pavg=s/t;
Pavg=round(Pavg*10)/10;
mprintf(" average depth of precipitation=%f cm.",Pavg);
