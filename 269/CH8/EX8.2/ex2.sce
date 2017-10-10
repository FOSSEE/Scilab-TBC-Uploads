Syms t,s
disp('i(s)=1/s*(s+1)')
b=ilt((1*s^0+0)/s,s,t)
e=ilt((-1*s^0+0)/(s+1),s,t)
f=b+e
printf("current in time domain by partial fraction is")
disp(f,"i(t)=")
disp('by scaling theorem i1(t)=')
d=ilt((2*s^0+0)/(2*s),s,t)
g=ilt((-2*s^0+0)/(2*s+1))
l=d+g
disp(l)
