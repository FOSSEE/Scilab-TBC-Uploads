//chapter19
//example19.10
//page423

fc=500 // kHz
fs=1 // kHz

lower_sideband=fc-fs
upper_sideband=fc+fs
BW=upper_sideband-lower_sideband

printf("sideband frequencies = %.3f kHz and %.3f kHz \n",lower_sideband,upper_sideband)
printf("bandwidth required = %.3f kHz \n",BW)
