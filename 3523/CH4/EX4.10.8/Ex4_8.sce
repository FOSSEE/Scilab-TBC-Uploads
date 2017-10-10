//Example 8// Ch 4
clc;
clear;
close;
// given data
//current between two parallel plates were 1.22,1.82,2.22 of the initiating photocurrent I1,I2,I3
x = 1.22;//x is I1/I0 I1=1.22I0
y = 1.82;//y is I2/I0 I2=1.82I0
w = 2.22;//z is I3/I0 I3=2.22I0
d1 = 0.005; //in meters
d2 = 0.01504; //in meters
d3 = 0.019; //in meters
// first ionization coefficients alpha1, alpha2 and alpha3
alpha1 = log(x)/d1;
alpha2 = log(y)/d2;
alpha3 = log(w)/d3;
printf("first ionization coefficient %f m^-1 \n",alpha1)
printf("second ionization coefficient %f m^-1 \n",alpha2)
printf("third ionization coefficient %f m^-1 \n",alpha3)
// E/p and p were maintained constant so at d3 the secondary ionization coefficient mechanism must be acting without any change in alpha
z = (w - exp(alpha1*d3))/(w*(exp(alpha1*d3)-1));//secondary ionization coefficient
printf("secondary ionization coefficient %f \n",z)


