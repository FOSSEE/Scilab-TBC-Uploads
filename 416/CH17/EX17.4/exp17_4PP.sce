clc 
clear
disp("example 17 4")
//given
n=4 //number of generating station
f=0.02 //F.O.R
a=1-f
p=50 //generation station power 
mp=150 //maximum alowable  power
minp=30 //minimum power 
lf=60 //load factor in persentage
function [y]=comb(m,r)
y=factorial(m)/(factorial(m-r)*factorial(r))
endfunction
for i=0:n
    pg(i+1)=comb(n,i)*((f)^i)*((a)^(n-i))
    co(i+1)=p*i;ca(i+1)=p*(n-i)
    printf("\nnumber of units out %d ,capacity out %dMW ,capacity available %dMW ,probability %.7f ",i,co(i+1),ca(i+1),pg(i+1))
end
ld=mp:-lf:minp
[m n1]=size(ld)
[mm m]=max(co)
plot(ld)
tg(1)=0
for i=2:n+1
    tg(i)=(mp-ca(i))*100/(2*lf) //percentage time 
end
disp("")
for i=1:n+1
    el(i)=pg(i)*tg(i)
    printf("\nnumber of units out %d ,capacity out %dMW ,capacity available %dMW ,probability %4f ,tg in persentage %.2f ,expected load %.6fMW",i-1,co(i),ca(i),pg(i),tg(i),el(i))
end
lt=sum(el)
printf("\n\nexpected loss of load is %.6fMW percent of time. assuming 365 days in a year, then expected loss of load is %.3fMW days per year ,some times the loss of load is also expressed as reciprocal of this figure and then the units are years per day this result is %.4fMW years per day.",lt,lt*365/100,100/(lt*365))