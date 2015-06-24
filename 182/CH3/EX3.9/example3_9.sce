
// example 3-9 in page 53
clc;
//given data
A=['a' 'b'];
Rm=1e+3;// coil resistance of 1 k ohm
Rs=890.7e+3;//multiplier resistance in ohm
Vf=0.7;//voltage drop across the diode in volt
//calculation
m=0;// reference to indicate a and b respectively
for n=75:-25:50 //voltages 50 and 75 volts
    Iav=(0.637)*(((1.414*n)-2*Vf)/(Rs+Rm));// average current through pmcc instrument in ampere
    m=m+1;
    printf("(%c),\nIav for %d V is %.2f micro-A\n",A(m),n,Iav*10^6);
    printf("pointer indication for %d V is %.2f FSD\n",n,10000*Iav);
end
