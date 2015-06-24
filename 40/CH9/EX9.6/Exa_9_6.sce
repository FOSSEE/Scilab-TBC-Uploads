//Mappings from integration algorithm
//(a)Trapezoidal integration algorithm
s=%s;z=%z;
a=input('enter the value of a')
ts=input('enter the value of sampling time')
HS=1/(s+1);
HZa=horner(HS,2*(z-1)/(ts*(z+1)))
za=roots(denom(HZa))//pole always less than 1 ,hence HZ is stable
//(b)simphson's algorithm
HZb=horner(HS,3*(z^2-1)/(ts*(z^2+4*z+1)))
zb=roots(denom(HZb))
//magnitude of 1 pole always greater than 1 ,hence HZ is unstable