clc
clear
disp("example 17 3")
//given
n=4 //number of generating station
f=0.05 //F.O.R
a=1-f
p=50 //generation station power 
mp=150 //maximum alowable  power
lf=50 //load factor in persentage
function [y]=comb(m,r)
y=factorial(m)/(factorial(m-r)*factorial(r))
endfunction
for i=0:n
    pg(i+1)=comb(n,i)*((f)^i)*((a)^(n-i))
    co(i+1)=p*i;ca(i+1)=p*(n-i)
    printf("\nnumber of units out %d ,capacity out %dMW ,capacity available %dMW ,probability %4f ",i,co(i+1),ca(i+1),pg(i+1))
end
ld=mp:-lf:0
[m n]=size(ld)
plot(ld)
tg(n-1)=round(10000/(n-1))/100
tg(n)=tg(n-1)*2
tg(n+1)=100
tg(2)=0;tg(1)=0 //maximum load limit
for i=0:n
    el(i+1)=pg(i+1)*tg(i+1)
    printf("\nnumber of units out %d ,capacity out %dMW ,capacity available %dMW ,probability %4f ,tg in persentage %.2f ,expected load %.6fMW",i,co(i+1),ca(i+1),pg(i+1),tg(i+1),el(i+1))
end
lt=sum(el)
printf("\n\nexpected loss of load is %.6fMW percent of time. assuming 365 days in a year, then expected loss of load is %.3fMW days per year",lt,lt*365/100)