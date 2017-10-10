//Example 6 Page No: 1.85
//given
adm=400;
cmrr=50;
vin1=50e-3;//volt
vin2=60e-3;//volt
vnoise=5e-3;//volt
v0=(vin2-vin1)*adm;
//determine noise
acm=adm/316.22;
v1=vnoise*acm;
disp('Noise = '+string(v1*10^3)+' mV');



