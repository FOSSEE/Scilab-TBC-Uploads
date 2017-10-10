clc;
//page no 7-21
//Example 7.4
//Given transmitter frequency is 160MHz with a maximum deviation of 5.1kHz at a minimum audio frequency of 100Hz, initial phase modulation deviation is to be kept to less than 12 degrees
ft=160;//transmitter frequency in MHz
fd=5.1;//maximum frequency deviation in kHz
fmin=100;//minimum audio frequency in Hz
Of=100;//oscilltor frequency in kHz
pd=12;//phase deviation in degrees
pdmax=(12*%pi)/180;
disp(+'rad',pdmax,'Maximum phase deviation of the modulator is ');
fdmax=pdmax*fmin;
disp(+'Hz',fdmax,'Maximum frequency deviation of the modulator is ');
N=(fd*10^3)/fdmax;
disp(N,'Frequency deviation increase required is ');
//2^5=243; Therefore, the modulated waveform should be passed through a chain of 5 tripler stages to give final deviation of 5.1kHz
//at a frequency of 100kHz*243-24.3MHz
mixOf=ft-24.3;//Mixer oscillator frequency
disp(+'MHz',mixOf,'Mixer oscillator signal is ');
