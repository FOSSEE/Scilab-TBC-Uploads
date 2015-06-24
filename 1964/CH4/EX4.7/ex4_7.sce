//Chapter-4, Example 4.7, Page 135
//=============================================================================
clc
clear
//INPUT DATA
I=10;//direct current in A
Im=10;//peak value of sinusoidal current in A
//CALCULATIONS
function y1=f1(x),y1=(I+Im*sin(x))^2,endfunction
a1=(intg(0,2*%pi,f1));
a1=a1/(2*%pi);//mean square value in A
rms=sqrt(a1);//rms value in A
mprintf("rms value is %2.2f A",rms);
//=================================END OF PROGRAM==============================
