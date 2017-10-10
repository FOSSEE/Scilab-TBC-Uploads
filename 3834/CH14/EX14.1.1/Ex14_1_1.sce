//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 14.1.1
clc;
clear;
//given
H=4.16;//Information carrying capacity(that is bandwidth) of a transmission line in Mbit
C=56;//time of transmission in Kbit/s

//By Hartley's law
T=(H*1E6)/(C*1E3);//Time for downloading in s

mprintf("It takes %.2f sec to download %.2f bits from internet to PC",T,H);//the answer given in book is wrong
