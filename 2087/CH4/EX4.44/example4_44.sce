

//example 4.44
//calculate mean rainfall;additional guages needed
clc;funcprot(0);
//given
p=[120 95 96 60 65 70 45 21];   //rain guage readings at respective stations
s=0;
for i=1:8
    s=s+p(i);
end
pavg=s/8;
u=0;
for i=1:8
    u=u+(p(i)-pavg)^2;
end
sx=(u/7)^0.5;
Cv=sx*100/pavg;
N=(Cv/13.99)^2;
N=round(N*100)/100;
mprintf("mean rainfall=%f cm.",pavg);
mprintf("\ntotal stations needed=%f.",N);
//taking N=10
N=10;
n=N-8;
mprintf("\nadditional guages needed=%i.",n);
