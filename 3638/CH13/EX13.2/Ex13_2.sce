//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 13.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
B=2.5e9;//pulse rate of signal in bits/sec

mprintf("\n In the RZ format, we would require a bandwidth = %.2f GHz",B/1e9);//In RZ format, Deltaf=B and Division by 10^9 to convert into GHz
mprintf("\n In the NRZ format, we would require a bandwidth = %.2f GHz",(B/2)/1e9);//In RZ format, Deltaf=B/2 and Division by 10^9 to convert into GHz
