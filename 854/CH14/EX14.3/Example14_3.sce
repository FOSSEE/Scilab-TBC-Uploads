//clear//
//Caption:Program to determine the group delay and difference in propagation times
//Example14.3
//page 502
clc;
C = 3e08; //free space velocity in m/sec
er = 2.1; //dielectric constant of teflon material
fc1 = 10.3e09;//cutoff frequency for mode m =1
fc2 = 2*fc1; //cutoff frequency for mode m =2
f = 25e09; //operating frequency in Hz
Vg1 = group_delay(C,er,fc1,f);//group delay for mode m = 1
Vg2 = group_delay(C,er,fc2,f);//group delay for mode m = 2
del_t = group_delay_difference(Vg1,Vg2);
disp(ceil(del_t*1e10),'group delay difference in ps/cm del_t=')
//Result
//group delay difference in ps/cm del_t=   
//     33.  
