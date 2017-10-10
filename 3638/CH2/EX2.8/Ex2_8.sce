//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 2.8
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
deltanu=1.5e9;//change in frequency of He-Ne laser in Hz
c=3e8;//speed of light in m/s
lc=c/deltanu;//Corresponding coherence length
mprintf("Coherence length of He-Ne laser=%.1f cm",lc/1e-2);//Dividing by 10^(-2) to convert in cm
