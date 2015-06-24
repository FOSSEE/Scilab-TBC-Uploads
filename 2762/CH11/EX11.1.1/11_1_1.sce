//Transport Processes and Seperation Process Principles
//Chapter 11
//Example 11.1-1
//Vapour Liquid Seperation Processes
//given data
pa=[116.9 135.5 155.7 179.2 204.2 240]
pb=[46 54 63.3 74.3 86 101.32]
P=101.32
//eq: paxa+pb(1-xa)=P
xa=[];
ya=[];
for i=1:6
    xa(i)=(P-pb(1,i))/(pa(1,i)-pb(1,i))
    ya(i)=((pa(1,i))*xa(i))/P
end
xa(7)=1;
ya(7)=1;
m=linspace(0,1,10)
n=linspace(0,1,10)
plot(m,n)
plot2d(xa,ya,rect=[0 0 1 1])
xtitle("raolts law","xa","ya")
mprintf("xa=%f",xa);
mprintf("ya=%f",ya);






















































