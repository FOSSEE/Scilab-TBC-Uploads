//problem 9 pagenumber 5.101
//given
fh=2e6;//hz
id=[1e-6,1e-9];format(6);
i=1;
while i<3
    In=sqrt(2*1.62e-19*id(i)*fh);
    disp('signal to noise id '+string(id(i)*10^6)+' = '+string(20*log10(id(i)/In))+' dB');
    i=i+1;
end

