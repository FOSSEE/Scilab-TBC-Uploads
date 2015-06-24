//Chapter-4, Example 4.2, Page 130
//=============================================================================
clc
clear
//CALCULATIONS
//for halfwave rectifier
Im=1;//assume peak value is 1
//for (0 to pi) value is (Im*sin(theta)) for (pi to 2*pi) value is 0
function y1=f1(x),y1=(Im^2)*(sin(x))^2,endfunction
a1=(intg(0,%pi,f1));
a=(a1)/(2*%pi);//mean square value
rms=sqrt(a);//rms value
function y3=f3(x),y3=(Im)*(sin(x)),endfunction
a3=(intg(0,%pi,f3));
av=a3/(2*(%pi));//average value
ff=rms/av;//form factor
pf=Im/rms;//peak factor
mprintf("for half wave rectifier\n");
mprintf("form factor=%1.2f,peak factor=%d\n",ff,pf);
//for fullwave rectifier
function y4=f4(x),y4=(Im^2)*(sin(x))^2,endfunction
a4=(intg(0,%pi,f4));
a4=a4/(%pi);
rms2=sqrt(a4);//rms value
function y5=f5(x),y5=(Im)*(sin(x)),endfunction
av2=(intg(0,%pi,f5))/(%pi);//average value
ff2=rms2/av2;//form factor
pf2=Im/rms2;//peak factor
mprintf("for full wave rectifier\n");
mprintf("form factor=%1.2f,peak factor=%1.2f",ff2,pf2);
//=================================END OF PROGRAM==============================
