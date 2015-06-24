//calculation of nuclear binding energy

clear;
clc;

printf("\t Example 23.2\n");

NA=6.022*10^23;//avogadro number
c=3*10^8;//speed of light, m/s
p=1.007825;//mass of proton, amu
n=1.008665;//mass of neutron, amu
mI=126.9004;//atomic mass of I, amu
pI=53*p+74*n;//estimated mass of I, amu
deltam=mI-pI;//mass defect, amu
deltaE=-deltam*c^2;//energy released, amu m^2/s^2
deltaE=deltaE/(NA*1000);//energy released in J
deltaE=deltaE/127;//binding energy per nucleon, J

printf("\t the nuclear binding energy per nucleon is : %4.2f *10^-12 J/nucleon\n",deltaE*10^12);

//End
