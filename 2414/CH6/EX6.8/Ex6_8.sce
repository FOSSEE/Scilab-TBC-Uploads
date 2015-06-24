clc;
close();
//page no 200
//prob no. 6.8
//All frequencies in kHz
fc=250;  //carrier freq
LSB=[fc-1 fc-3 fc-5];
USB=[fc+1 fc+3 fc+5];
disp(fc,'carrier:',USB,'USB:',LSB,'(a)  The spectrum contains following freq.LSB:' );
W=5;
BT=2*W;
disp(BT,'The transmission bandwidth is ');
