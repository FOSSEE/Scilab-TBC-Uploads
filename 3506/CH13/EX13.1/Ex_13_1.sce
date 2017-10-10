//Optical Fiber communication by A selvarajan
//example 13.1
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
Sigma_s=0.1//source dispersion inns
Sigma_D=0.1//detector dispersion in ns
Sigma_F=0.05//fiber dispersion in ns
bitrate=622//bitrate in Mbps
STM_rate=250//4 channel VSB PCM
Power_margin=30//power margin in dB
system_margin=6//system margin in dB
Average_loss=0.6//average loss in dB/Km

//solution
Sigma_max=STM_rate/bitrate//max dispersion allowed
L2=sqrt((Sigma_max-Sigma_s^2-Sigma_D^2)/(Sigma_F^2))//dispersion limited maximum length in Km
L1=(Power_margin-system_margin)/Average_loss//Attenuation limited length in km
mprintf("Since dispersion limited maximum length is less than Attenuation limited length \nso present system length limit is =%fKm ",L2)
