

//example 4.1
//calculate mean rainfall;additional guages needed
clc;funcprot(0);
//given
p=[78.8 90.2 98.6 102.4 70.4];   //rain guage readings at respective stations
s=0;
for i=1:5
    s=s+p(i);
end
pavg=s/5;
u=0;
for i=1:5
    u=u+(p(i)-pavg)^2;
end
sx=(u/4)^0.5;
Cv=sx*100/pavg;
N=(Cv/6)^2;
N=round(N*100)/100;
mprintf("mean rainfall=%f cm.",pavg);
mprintf("\ntotal stations needed=%f.",N);
//taking N=7
N=7;
n=N-5;
mprintf("\nadditional guages needed=%i.",n);

