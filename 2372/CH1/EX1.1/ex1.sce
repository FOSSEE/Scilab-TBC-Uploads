clc;
clear;
data=[0 2 6; // column 1 and 2 for specifying the 
    2 6 5;   // time interval in hours
    6 9 10;  // column 3 representing Load in MW
    9 12 15;
    12 14 12;
    14 16 14;
    16 18 16;
    18 20 18;
    20 22 16;
    22 23 12;
    23 24 6;];
P=data(:,3);
Dt=data(:,2)-data(:,1);
W=P'*Dt;
Pavg=W/sum(Dt);
peak=max(P);
LF=Pavg/peak*100;
mprintf('avg load,Pavg=%4.2f MW\n',Pavg);
mprintf('Peak load,Peak=%3.1f MW\n',peak);
mprintf('load factor,LF=Pavg/Peak=%4.2f',LF);
r=1;
for(i=1:11)
    x=data(i,1)+1;
    y=data(i,2);
    for(j=x:y)
        bard(r)=data(i,3);
        r=r+1;
    end
end
bar(bard);
xlabel("Time(in hrs)-->");
ylabel("Power,P(in MW)-->");
title("Daily load cycle based on given data");
