clc;
//page no 186
//prob no. 6.1
//All frequencies in kHz
fc=1*10^3; //in kHz
W=15;  
DSBl=fc-W;  //lowest freq of DSB signal
DSBh=fc+W;  //highest freq of DSB signal
disp(DSBh,'to',DSBl,'(a)  The range of freq is from ');
BT=2*W;
disp(BT,'(b)  Transmission bandwidth is ');
