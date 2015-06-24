clc;
//page no 204
//prob no. 5.9
//A direct FM transmitter with kf=2kHz/V & max deviatn of 300Hz.
kf=2*10^3;tx_dev=300;
disp('a)See fig.5.23 for this block diagram');
f_mul=3*2*3;//3 stage freq multiplier with tripler doubler and tripler
//b)Determination of max dev at oscillator 
dev_o=5*10^3;//Deviation at o/p
dev_osc=dev_o/f_mul;
if  dev_osc < tx_dev then
    disp('b)Transmitter is capable of 5kHz deviation');
else
    disp('b)Transmitter is not capable of 5kHz deviation')
end;
//c)Determination of oscillator freq
fo=150;//carrier freq in MHz
fosc=fo/f_mul;
disp('MHz',fosc,'c)The oscillator freq is');
//d)Determination of audio voltage for full deviation
Vi_peak=dev_osc/kf;//dev at oscillator of 278Hz causes full 5kHz deviation
//converting peak voltage to rms voltage
Vi_RMS=Vi_peak/sqrt(2);
disp('mV',Vi_RMS*10^3,'The audio RMS voltage is')