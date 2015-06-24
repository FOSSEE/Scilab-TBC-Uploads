clc;
close();
clear();
//page no 311
//prob no. 9.5
Vfs=10;  //Volts
N=8;
delta_Xb=2^(-N+1);
mprintf('(a)  The normalised bipolar step size is %f\n ',delta_Xb);
delta_vb=delta_Xb*Vfs;
mprintf('(b)  The actual step size is %.2f mV\n ',delta_vb*10^3);
Xbmax=1-delta_Xb;
mprintf('(c)  The normalized maximum quantized level is %f\n ',Xbmax);
vbmax=Xbmax*Vfs;
mprintf('(d)  The actual maximum quantized level is %f V\n ',vbmax);
Eb=delta_Xb/2;
mprintf('(e)  The normalized peak error is %f\n ',Eb);
eb=Eb*Vfs;
mprintf('(f)  The actual peak error is %.2f mV ',eb*10^3);
