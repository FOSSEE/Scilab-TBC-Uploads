//Standard Deviation Computations

clear;
clc;

printf("\tExample 6.6b\n");

//First and Last point are arbitary to plot the required 4 points
n=[0 1 2 3 4 5];
TS=[510 520 512 515 522 525];

i=2;
TSmean=0;

for i=2:5
    TSmean=TSmean+(TS(i)/4);
end

//Standard Deviation
j=0;
std=0;

for i=2:5
    std=std+((TS(i)-TSmean)^2/(4-1));
end

printf("\nStandard deviation is %.1f MPa\n",sqrt(std));

//End