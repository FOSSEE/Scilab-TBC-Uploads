clc
clear
disp("example 3 4")
p=100  //ratring of steam station
fc=3000 //fixed cost of plant per year
rg=0.9 //90 paise per kv generation
uf=1  //utilization factor 1
lf=20:20:100 //let load factor be 5 discreate units
lm=uf*lf  //lwt load MW is as same as lf as utilisation factor is 1
n=size(lm)
fc=fc*ones(1,n(2))
op=rg*100*ones(1,n(2))
for i=1:n(2)
    negp(1,i)=lm(i)*8760
    fcgp(1,i)=fc(i)*10000/negp(i)
    tgc(1,i)=fcgp(i)+op(i)
end
plot2d4(lf,tgc)
printf("load factor")
disp(lf)
printf("load MW\n")
fcgp=fcgp/100;op=op/100;tgc=tgc/100
printf("%dMW\t%dMW\t%dMW\t%dMW\t%dMW",lm(1),lm(2),lm(3),lm(4),lm(5))
disp("fixed cost")
printf("Rs%d\tRS%d\tRs%d\tRs%d\tRs%d",fc(1),fc(2),fc(3),fc(4),fc(5))
disp("number of KW hrs of energy generated in paise per unit of energy")
printf("%dkWh\t%dkWh\t%dkWh\t%dkWh\t%dkWh",negp(1),negp(2),negp(3),negp(4),negp(5))
disp("fixed cost in paise per unit of energy")
printf("Rs%.3f\tRS%.3f\tRs%.3f\tRs%.3f\tRs%.3f",fcgp(1),fcgp(2),fcgp(3),fcgp(4),fcgp(5))
disp("operating cost in paise per unit of energy")
printf("Rs%.3f\tRS%.3f\tRs%.3f\tRs%.3f\tRs%.3f",op(1),op(2),op(3),op(4),op(5))
disp("totla generation cost in paise per unit of energy")
printf("Rs%.3f\tRS%.3f\tRs%.3f\tRs%.3f\tRs%.3f",tgc(1),tgc(2),tgc(3),tgc(4),tgc(5))