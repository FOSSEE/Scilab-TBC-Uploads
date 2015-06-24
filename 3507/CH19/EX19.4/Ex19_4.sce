//chapter19
//example19.4
//page419

fc=2500 // kHz
fs_min=0.05 // kHz
fs_max=15 // kHz

upper_sideband_min=fc+fs_min
upper_sideband_max=fc+fs_max

lower_sideband_min=fc-fs_min
lower_sideband_max=fc-fs_max

BW=upper_sideband_max-lower_sideband_max

printf("lower sideband is from %.3f to %.3f kHz \n",lower_sideband_min,lower_sideband_max)
printf("upper sideband is from %.3f to %.3f kHz \n",upper_sideband_min,upper_sideband_max)
printf("Bandwidth for RF amplifier = %.3f kHz \n",BW)
