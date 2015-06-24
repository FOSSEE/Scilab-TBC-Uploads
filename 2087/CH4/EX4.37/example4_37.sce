

//example 4.37
//calculate
//probability of excedence
//probability of flood magnitude occuring at:
//at least once in 10 years
//two times in 10 succesive years
//once in 10 succesive years
clc;funcprot(0);
//given
T=40;            //return period
P=1/T;
n=10;
Rsk=1-(1-P)^n;
s=1;t=1;
for i=1:n
    s=s*i;
end
for i=1:(n-2)
    t=t*i;
end
P2n=s*P^2*(1-P)^8/(t*2);
P1n=n*P*(1-P)^(n-1);
Rsk=round(Rsk*1000)/1000;
P2n=round(P2n*10000)/10000;
P1n=round(P1n*1000)/1000;
mprintf("probability of excedence=%f.",P);
mprintf("\nprobability of flood magnitude occuring at least once in 10 years=%f",Rsk);
mprintf("\nprobability of flood magnitude occuring at two times in 10 succesive years=%f",P2n);
mprintf("\nprobability of flood magnitude occuring at once in 10 succesive years=%f",P1n);

