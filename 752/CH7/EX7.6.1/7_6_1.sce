clc;
//page no 234
//prob no. 7.6.1
// An AM broadcast receiver with following specifications is given
IF=465;//IF in KHz
fs=1000;//Tuning freq in KHz
Q=50;//Quality factor
// Oscillator freq fo is given as
fo=fs+IF;
// a) Image freq is given as
fi=fo+IF;
disp('KHz',fi,'Image freq is');
y=fi/fs - fs/fi;
// b) image rejection is given as 
Ar=1/sqrt(1+(y*Q)^2);
Ar_dB=20*log10(Ar);
disp('dB',Ar_dB,'Image rejection is');