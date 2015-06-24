// example:-9.3,page no.-482.
// program to find out number of filter elements required.
fc=8*10^9;f=11*10^9;
w=2*%pi*f;
wc=2*%pi*fc;
x=abs(w/wc)-1;
disp(x,"from table we see that an attenuation of 20 db at this frequency requires that N>=8  for x = ")