clc;
close();
clear();
//page no 186
//prob no. 6.2
//All frequencies in kHz
fi=250;  //input freq
LSB=[fi-1;fi-3;fi-5];
USB=[fi+1;fi+3;fi+5];
disp(LSB,'and LSB:',USB,'(a)  The upper sideband and lower sideband ,USB:' );
BT=2*5;
disp(BT,'The net transmission bandwidth is ');

