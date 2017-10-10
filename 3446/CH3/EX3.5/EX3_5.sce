// Exa 3.5
// To calculate coherence time, coherence bandwidth, type of Symbol distortion and type of fading.

clc;
clear all;

v=60*0.44704;  //.. mph to mps
fc=860*10^6;//in Hz
td=2*10^-6; //RMS delay spread in sec
c=3*10^8;// speed of light in m/sec
Rs=19200; //Coded symbol rate in bps

//solution
lamda=c/fc;
fm=v/lamda; //Maximum doppler shift
tc=1/(2*%pi*fm);//Channel coherence time
printf('Channel coherence time is %.4f sec \n',tc);
ts=1/Rs; //symbol interval
printf(' Symbol interval is %d microsec \n',ts*10^6);
disp(" As the symbol interval is much smaller compared to the channel coherence time. So, Symbol distortion is minimal and fading is slow.");
disp("");
Bc=1/(2*%pi*td);
printf('  Coherence Bandwidth is %.2f kHz \n',Bc/1000)




