//problem 18 pagenumber 4.45
//given
n=4;z='1111';format(6);
r=10e3;//ohm
r1=20e3;//ohm
vref=10;//volt
//determine Resolution and output current
r=(1/2^n)*vref/r;
disp('Resolution of 1th = '+string(r*10^6)+' μA');
disp('Iout = '+string(r*1e6)+' x D');
iout=r*base2dec(z,2);
disp('Output current = '+string(iout*10^6)+' μA');//error in book



