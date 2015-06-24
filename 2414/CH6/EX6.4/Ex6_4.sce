clc;
//page no 190
//prob no. 6.4
//All frequencies in kHz
fi=250;  //input freq
LSB=[fi-1 fi-3 fi-5];
USB=[fi+1 fi+3 fi+5];
disp(LSB,'(a)  For LSB transmission freq are' );
disp(USB,'(b)  For USB transmission freq are' );
W=5;
BT=W;
disp(BT,'(c)  The transmission bandwidth is ');

