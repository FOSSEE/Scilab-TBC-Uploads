

//example 4.13
//calculate maximum and minimum rainfall
clc;funcprot(0);
//given
N=20;
m=[1:1:20];             //rank number
rd=[82 78 75 72 70 68 65 63 61 58 56 54 52 50 46 40 36 34 32 30];   //rainfall in decresing order
for i=1:20
    ri(i)=rd(21-i);
end
for i=1:20
    T(i)=N/(m(i)-0.5);
end
//from the curves
mprintf("maximum rainfall=79cm for T=15 years.");
mprintf("\nminimum rainfall =31 cm for T=15 years.");
//graph is plotted between rd and T;ri and T

