//Example 12 Page No: 1.87
//given
vin1=150e-6;//volt
vin2=100e-6;//volt
a=1000;
cmrr=[100,200,450,105];
//determine output voltage
vc=(vin1+vin2)/2;
vd=(vin1-vin2);
j=1;format(6);
while j<=4 
    v0=(a*vd*(1+(vc/(cmrr(j)*vd)))) ;
    disp('Output voltage CMRR for '+string(cmrr(j))+' = '+string(v0*10^3)+' mV');//error in book
    j=j+1;
end
