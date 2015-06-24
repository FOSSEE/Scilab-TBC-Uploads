clc;
close();
clear();
//page no 310
//prob no. 9.4
N=8;
Vfs=20;  //Volts
delta_Xu=2^-N;
mprintf('(a)  The normalised unipolar step size is %f\n ',delta_Xu);
delta_vu=delta_Xu*Vfs;
mprintf('(b)  The actual step size is %.2f mV\n ',delta_vu*10^3);
Xumax=1-delta_Xu;
mprintf('(c)  The normalized maximum quantized level is %f\n ',Xumax);
vumax=Xumax*Vfs;
mprintf('(d)  The actual maximum quantized level is %f V\n ',vumax);
Eu=delta_Xu/2;
mprintf('(e)  The normalized peak error is %f\n ',Eu);
eu=Eu*Vfs;
mprintf('(f)  The actual peak error is %.2f mV ',eu*10^3);
