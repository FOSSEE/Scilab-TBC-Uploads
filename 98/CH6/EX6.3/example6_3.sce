//Chapter 6
//Example 6_3
//Page 110

clear;clc;

kw=[20 100 50];
pf=[1 -0.707 0.9];

tkvar=0;
for i=1:3
  kva(i)=abs(kw(i)/pf(i));
  printf("kVA %i = %.2f kVA \n", i,kva(i));
  kvar(i)=kva(i)*sin(acos(pf(i)));
  printf("kVAR %i = %.2f kVAR \n", i,kvar(i));
end;
tkvar=kvar(1)+kvar(2)+kvar(3);
tkva=sqrt(sum(kw)^2+(tkvar)^2);
printf("Total kW = %.2f kW \n", sum(kw));
printf("Total kVAR = %.2f kVAR \n", tkvar);
printf("Total kVA = %.2f kVA \n", tkva);
printf("Power factor = %.2f lagging\n", sum(kw)/tkva);

  
      

