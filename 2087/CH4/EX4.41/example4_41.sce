

//example 4.1
//calculate mean rainfall;additional guages needed
clc;funcprot(0);
//given
p=[41 51 32 55 50 68];   //rain guage readings at respective stations
s=0;
for i=1:6
    s=s+p(i);
end
pavg=s/6;
u=0;
for i=1:6
    u=u+(p(i)-pavg)^2;
end
sx=(u/5)^0.5;
Cv=sx*100/pavg;
N=(Cv/8)^2;
N=round(N*100)/100;
mprintf("mean rainfall=%f cm.",pavg);
mprintf("\ntotal stations needed=%f.",N);


