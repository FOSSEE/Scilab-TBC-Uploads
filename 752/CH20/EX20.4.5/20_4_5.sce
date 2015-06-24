clc;
//page no 776
//prob no. 20.4.5
del_imd=0;del_md=2.81;del_wgd=0.495;t_w=2.5;
del_tot=((del_imd^2)+(del_md^2)+(del_wgd^2))^(1/2);
disp('ns',del_tot,'The total dispersion is');
t_r=((t_w^2)+(del_tot^2))^(1/2)
//Determination of max allowed bit rate
B=(1000/(2*t_r));
disp('Mbps',B,'The max allowed bit rate is');