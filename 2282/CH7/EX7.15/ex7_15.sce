//Example 7.15, Page no.286
clear 
clc

f=6*10^9     //uplink frequency
eirp= 80     //Earth station EIRP in dBW
r=35780      //Earth station satellite distance
l=2          //attenuation due to atomospheric factors in dB
e=0.8        // satellite antenna's aperture efficiency
a=0.5        // satellite antenna's aperture area
T=190       // Satellite receiver's effective noise temperature 
bw=20 *10^6 //Satellite receiver's bandwidth
cn=25       // received carrier-to-noise ratioin dB
c=3*10^8    //speed of light

k=1.38*10^-23
lamda=c/f
G=e*4*%pi*a/lamda^2
G=ceil(G*100)/100
Gd=10*log10(G)
p=10*log10(k*T*bw)
pl=20*log10(4*%pi*r*10^3/lamda)
rp=eirp-l-pl+Gd
rp=floor(rp*100)/100
rc=floor((rp-p)*100)/100
lm=rc-cn
printf("Satellite Antenna gain, G = %.2f = %.2f dB \n Receivers Noise Power = %.1f dB\n free-space path loss = %.2f dB \n received power at satellite = %.2f dB \n receiver carrier = %f is stronger than noise.\n It is %.2f dB more than the required threshold value.\n Hence,  link margin = %.2f dB",G,Gd,p,pl,rp,rc,lm,lm)
