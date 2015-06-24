clc;
//page no 799
//prob no. 20.8.1
//A fiber link is given
pt=0;pr=-57;Nc=2;BER=10^-9;N=5;Lpt=6;Lpr=6;Lc=1;Ls=0.5;Lf=2;M=5;del_t=0.505;B=35;Ns=5;
//a)Determination of loss-limited fiber length
z=(pt-pr-M-(Nc*Lc)-(Ns*Ls)-Lpt-Lpr)/Lf;
disp('km',z,'a)the loss-limited fiber is');
//b)Determination of max BW for loss-limited fiber length
B_max=1/(5*del_t*z);
disp('Gbps',B_max,'b)the max BW for loss-limited length is');
//c)Determination of dispersion-limited length 
z_disp=1000/(5*del_t*B);
disp('km',z_disp,'the dispertion limited length is');