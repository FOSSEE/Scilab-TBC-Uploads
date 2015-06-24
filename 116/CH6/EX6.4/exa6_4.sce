
//Caption: Program to determine system gain of 10Mbps, 2Ghz digital microwave repeater using 4 PSK modulation
 
//Example 6.4
 
//Page 325
 
//Refer to figure 6.17 on page 300
 
disp('From figure, Eb/N0 for 4 psk modulation can be determined 10.7 dB.')

//Using equation 3.24 from Appendix C
 
disp('SNR detector is 3dB higher than Eb/N0, therefore')

snr=13.7//SNR=13.7dB

disp('Since 4 PSK modulation provides 2bps/Hz, the sampling rate is 5 MHz, which is Nqyuist rate, therefore')

a1=10*log10(125000000000000)

a2=10*log10(1.3)
 
A0=a1-13.7-7-3-a2

disp('At a carrier frequency of 2GHz, the wavelength is')

(3*10^8)/(2*10^9)
 
FM=116+60+20*log10(0.15)-5-20*log10(4*%pi*5*10^4)//Fade Margin can be found by Equation 6.31

//Result
//A0 = 116dB
//wavelength = 0.15 m
//Fade Margin = 38.5 dB