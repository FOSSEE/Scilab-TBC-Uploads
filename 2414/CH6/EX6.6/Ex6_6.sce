clc;
//page no 195
//prob no. 6.6
//All frequencies in kHz
fi=250;  //input freq
USB=[fi+1 fi+3 fi+5]; //from Ex 6.4
//
fc=250;  //carrier freq
f0sum=fc+USB;
f0diff=USB-fc;
disp(f0sum,f0diff,'(a)  The output frequencies (in kHz) are ');
disp(f0diff,'(b)  At low pass filter,the actual frequencies (in kHz) are ');

