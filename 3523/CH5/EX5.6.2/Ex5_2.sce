//Example 2// Ch 5
clc;
clear;
close;
// given data
d = 0.001;//in meters
p = 101.3; //gas pressure in kPa
C = -2400.4;//constant value
A = 0.027;//constant value
As = 10^8;//avalanche size
//secondary ionization coefficient is much smaller than unity therefore ionization coefficient (alpha) is equal to electron attachment coefficient 
E = (2400.4*p)/0.027; //alpha is equal to e- attachment coeff occurs at this eq
Vs1 = E*d;//breakdown voltage in V
printf("electric field %e V/m \n",E)
printf("breakdown voltage %f V \n",Vs1)
Vs2 = (log(As)-C*p*d)/A; //in V
printf("breakdown voltage corresponding to an avalanche size %f V \n",Vs2)
//as the avalanche self-space charge is neglected the breakdown voltage will be same irrespective of the polarity of the stressed plate acc. to eq (5.4) N2>=N1;
Vspos = 9.4;//in kV when N2>=N1 in which no of e- in second avalanche is greater than equal to no of e- in first avalanche
printf("positive voltage breakdown %f kV \n",Vspos)
Vsneg = 9.2;//in kV when Neph >= 1 where Neph is no of e-photoemitted from the cathode
printf("negative voltage breakdown %f kV \n",Vsneg)
