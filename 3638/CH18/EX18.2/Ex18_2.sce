//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 18.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
SPL=20;//Sound Pressure Level of a whisper in dB
Pr=2e-5;//Reference pressure is the threshold of hearing in Pa

//Now, SPL=20log10(Pw/Pr)
//Rearranging the terms, we get
Pw=10^(SPL/20)*Pr;
mprintf("\n Pw=%.1e Pa",Pw); 
