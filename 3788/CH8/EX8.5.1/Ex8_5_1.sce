//Example 8.5.1
//Calculate the specific attenuation
clc
clear
rainfallrate=40
f=10            //10 Ghz
kv=0.00887
av=1.264
yr=kv*(rainfallrate)^av
printf("The specific attenuation at 10 Ghz is %f dB/km",yr)

