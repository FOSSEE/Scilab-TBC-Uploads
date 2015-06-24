clc;
//page no 190
//prob no. 6.3
//All frequencies in kHz
fc=1*10^3; //in kHz
W=15;  
LSBl=fc-W;  //lowest freq of LSB
USBh=fc+W;  //highest freq of USB
disp(fc,'to',LSBl,'(a)  The range of freq(in kHz) for LSB is from ');
disp(USBh,'to',fc,'(b)  The range of freq(in kHz) for USB is from ');
BT=W;
disp(BT,'(b)  Transmission bandwidth is ');
