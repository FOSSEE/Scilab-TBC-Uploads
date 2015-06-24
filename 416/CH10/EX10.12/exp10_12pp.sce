clear
clc
disp("example 10.12")
a1=7700;b1=52.8;c1=5.5*10^-3
a2=2500;b2=15;c2=0.05//given eqution
plo=200;pup=800
ct=1000
l=[500,900,1200,500];t=[6 16 20 24]//from given graph
function [p1,p2]=cost(y)
   p1=(2*c2*y-(b1-b2))/(2*(c1+c2))
   p2=y-p1
endfunction
ma=max(l)
mi=min(l)
for x=1:3
    [e g]=cost(l(x))
    if e<plo|g<plo|e>pup|g>pup then
        if e<plo|g<plo then
    [v,u]=min(e,g)
    if u==1 then
        e=plo
        g=l(x)-e
    else
        g=plo
        e=l(x)-g
    end
    end
    
end
printf("\np1=%3.2fMW\tp2=%3.2fMW",e,g)
end
