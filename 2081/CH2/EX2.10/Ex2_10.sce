Vm=96*5/18;
fc=900*10^6;
c=3*10^8;
function [y ]= fround(x,n)
// fround(x,n)
// Round the floating point numbers x to n decimal places
// x may be a vector or matrix// n is the integer number of places to round to
y=round(x*10^n)/10^n;
endfunction
Yc=fround((c/fc),2);
fdm=fround((Vm/Yc),2);
Tc=fround((0.423/fdm),5)//coherence time
Symbolrate=fround((1/Tc),0)//Symbolrate
printf('Symbol rate is %.f bps',Symbolrate)
