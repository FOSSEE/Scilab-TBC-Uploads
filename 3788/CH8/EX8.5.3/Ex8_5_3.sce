//Example 8.5.3
//Rain attenuation at 10 degrees
clc
clear
A45=4                 //Rain atttenuation of 4 dB at elevation angle of 45
angle=45
newangle=10
A=(cscd(10)/cscd(45))*A45
printf("Rain attenuation of %f dB at elevation angle of 10 degrees",A)
