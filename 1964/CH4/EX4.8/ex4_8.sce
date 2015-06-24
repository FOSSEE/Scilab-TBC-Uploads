//Chapter-4, Example 4.8, Page 136
//=============================================================================
clc
clear
//let the current peak value of sinusoidal and rectangular waves are Im.
//CALCULATIONS
Im=1;//let im current value be 1(just for calculation purposes)
rms1=sqrt(((Im)^2*%pi)/(%pi));//rms current value of rectangular wave
function y1=f1(x),y1=(Im^2)*(sin(x))^2,endfunction
a1=(intg(0,%pi,f1));
a1=a1/(%pi);//mean square value in A
rms=sqrt(a1);//rms value in A
z=((rms)^2/(rms1)^2);//relative heating effects 
mprintf("relative heating effects is %1.1f",z);
//=================================END OF PROGRAM==============================
