//kVAr rating of a synchronous condenser

clc;
clear;

P=5000*(10^3); // Power delivered to the load
pfo=0.8;// Original Power Factor
pfn=0.9;// New Power Factor
Pcomo=P+%i*(P*tand(acosd(pfo)));//Original Complex Power
Pcomn=P+%i*(P*tand(acosd(pfn)));//New Complex Power

Psc=abs(imag(Pcomo-Pcomn)); // Difference in kVAr;

printf('The kVAr rating of the synchronous condenser to correct the original p.f to 0.9 = %g kVAr \n',Psc/1000)
