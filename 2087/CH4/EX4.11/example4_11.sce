

//example 8.11
//calculate
//24h max. rainfall with return period of 8,15 and 25.
//24h max rainfall with 40%,24% and 8% probability.
//probabilty of rainfall of magnitude equal to or exceeding 100 mm.
clc;funcprot(0);
//given
N=20;
r=[142 126 116 108 102 95 92 88 86 82 80 78 76 73 71 69 68 66 65 64];   //rainfall in respective years
m=[1:1:20];             //ranking of storm
for i=1:20
    p(i)=m(i)*100/(N+1);        //probability(percent)
    T(i)=100/p(i);              //recurrence interval
end
//from frequency curve obtained we get
//Part (a)
T1=[8 15 25];
r1=[119 134 149];
mprintf("T(years)          Rainfall(mm)");
for i=1:3
    mprintf("\n%i                         %i",T1(i),r1(i));
end

//Part (b)
p1=[40 24 8];
r2=[87 101 130];
mprintf("\n\nprobability(percent)          Rainfall(mm)");
for i=1:3
    mprintf("\n%i                                %i",p1(i),r2(i));
end
//graph is plotted on semi-log graph between r and p

mprintf("\n\nFor rainfall=100 m.\nT=4 years.\nProbability=25 percent.");
