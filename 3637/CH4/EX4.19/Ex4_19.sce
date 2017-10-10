//problem 19 pagenumber 4.45
//given
n=8;format(6);
vref=10;//volt
vmin=vref/2^n;
D=133;
disp('Minimum input voltage = '+string(vmin*1e3)+' milivolt');
vif=vref-vmin;
disp('Input voltage make 1s = '+string(vif)+' volt');
vin=5.2;
format(3);z=dec2base(D,2);format(6);
disp('Decimal at '+string(vin)+' volt = '+string(D));//no unit



