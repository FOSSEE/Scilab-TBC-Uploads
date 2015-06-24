clc;clear;
//Example 8.15

//given data
V=50000;//applied voltage in V
p=1.99*10^3;//density in kg/m^3
n=4;
Na=6.02*10^26;//Avgraodo no. in 1/kg mole
M=74.6;//molecular mass
W=0.248*10^-10;//wavelength in m

//calculation
Wmin=12400/V;
disp(Wmin,'short wavelength limit');
a=(n*M/(Na*p))^(1/3);
d=a/2;
D=asind(W/(2*d));
disp(D,'glancing angle in degree')