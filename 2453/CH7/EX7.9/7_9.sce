//To calculate the temperature
H = 2;     //magnetic field, Wb/m^2
mew = 9.4*10^-24;
k = 1.38*10^-23;
//np = C*n0*exp(mew*H/(k*T))
//na = C*n0*exp(-mew*H/(k*T))
// np/na = exp(mew*H/(k*T))/exp(-mew*H/(k*T)) = exp(2*mew*H/(k*T))
//given np/na = 2. therefore exp(2*mew*H/(k*T)) = 2
T = 2*mew*H/(k*log(2));    //temperature, K
printf("temperature is %5.1f K",T);
