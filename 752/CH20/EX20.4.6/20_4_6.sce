clc;
//page no 778
//prob no. 20.4.6
//A multimode step index fiber
del_t=4;B=10;
//a)Determination of BW distance product
BDP=1/(2*del_t);
disp('Mbps-km',BDP,'a)The BW distance product for fiber is');
//b)Determiation of dispersion limited length
z_max_disp=BDP/(B*10^-3);
disp('km',z_max_disp,'b)The disp limited length for a fiber is');
