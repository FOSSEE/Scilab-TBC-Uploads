//chapter19
//example19.6
//page420

fc=1000 // kHz
fs=5 // kHz
m=0.5
Ec=100 // V

lower_sideband=fc-fs
upper_sideband=fc+fs
amplitude=m*Ec/2

printf("lower and upper sideband frequencies = %.3f kHz and %.3f kHz \n",lower_sideband,upper_sideband)
printf("amplitude of each sideband term = %.3f V \n",amplitude)
