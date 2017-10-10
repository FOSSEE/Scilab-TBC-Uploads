//problem 20 pagenumber 4.46
//given
vref=10;//volt
z=['01','0111','10111100'];format(6);
n=2;
v0=vref*(1/2^2);
disp('Output voltage at '+string(z(1))+' = '+string(v0)+' volt');
n=4
v0=vref*(1/2^2+1/2^3+1/2^4);
disp('Output voltage at '+string(z(2))+' = '+string(v0)+' volt');
v0=vref*(1/2+1/2^3+1/2^4+1/2^5+1/2^6+1/2^8);
disp('Output voltage at '+string(z(2))+' = '+string(v0)+' volt');



