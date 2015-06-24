clc;
//page no 774
//prob no. 20.4.3
//Refer example 20.4.1
wav_0=0.8*10^-6;Dm=-0.15;wav_3=1.5;z=12.5;
del_t=Dm*wav_3;
//Determination of total material dispersion
del_md=del_t*z;
disp('ns',del_md,'The total material dispersion is');