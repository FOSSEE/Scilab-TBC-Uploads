//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex7_3.sce.

clc;
clear;
T1=1000;                                            //number of Primary turns
T2=200;                                          //number of secondary turns
Is=250;                                           //secodary load current in A
I0=3;                                           //No load current in A
rp=0.72;                                       //primary winding resistance in ohms
rs=0.025;                                     //secondary  winding resistance in ohms
xp=0.92;                                        //primary winding leakage reactance in ohms
xs=0.036;                                     //secondary winding leakage reactance in ohms
Vs=2.2e3;                                      //supply voltage in volts

N=T1/T2;                                           //turns ratio of transformer
Is_dash=Is/N;
rs_dash=N^2*rs;
xs_dash=N^2*xs;
cos_pi_s=0.8;
cos_pi_0=0.2;
sin_pi_s=sind(acosd(0.8));
sin_pi_0=sind(acosd(0.2));
Isdash=(Is_dash*cos_pi_s)-%i*(Is_dash*sin_pi_s);
Io=(I0*cos_pi_0)-%i*(I0*sin_pi_0);
Ip=Isdash+Io;
a=real(Ip);
b=imag(Ip);
Ip_mag=sqrt(a^2+b^2);
printf("\n  Primary Current=%2.2f A \n",Ip_mag)

pi_p=atand(b/a);
printf("\n  Power factor=%1.3f lagging \n",cosd(pi_p))

VL_dash=Vs-(Ip*(rp+%i*xp))-(Isdash*(rs_dash+%i*xs_dash));                 //secondary terminal voltage referred to primary
VL_dash_mag=real(VL_dash);
VL=VL_dash_mag/N;
printf("\n  Secondary terminal voltage=%3.1f V \n",VL)
