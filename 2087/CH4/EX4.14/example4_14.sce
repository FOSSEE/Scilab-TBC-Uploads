

//example 4.14
//calculate daily lake evaporation
//average evaporation for one week
clc;funcprot(0);
//given
w=[12 5 2 -3 1 6 11];     //water added or taken out
r=[0 6 8 12 9 5 0];       //rainfall
for i=1:7
    pan(i)=w(i)+r(i);     //Pan evaporation
    le(i)=0.8*pan(i);     //lake evaporation
end

s=0;
for i=1:7
    s=s+le(i);
end
mprintf("daily lake evaporation(mm):");
for i=1:7
    mprintf("\n%f",le(i));
end
av=s/7;
av=round(av*100)/100;
mprintf("\n\naverage evaporation for one week=%f mm.",av);

