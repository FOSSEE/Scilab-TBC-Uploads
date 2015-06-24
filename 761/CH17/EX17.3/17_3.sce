clc;
//page no 624
//prob no. 17.3
//A waveguide with fc=10GHz.2 signal withfreq 12 & 17GHz propogate down=50m
fc=10*10^9;c=3*10^8;f1=12*10^9;f2=17*10^9;d=50;
//Determination of group velo for 12GHz
vg1=c*sqrt(1-(fc/f1)^2);
disp('m/s',vg1,'The group velo. for 12GHz signal is');
//Determination of group velo for 17GHz
vg2=c*sqrt(1-(fc/f2)^2);
disp('m/s',vg2,'The group velo. for 17GHz signal is');
//Determination of time taken for 50m dist by f1
t1=d/vg1;
//Determination of time taken for 50m dist by f2
t2=d/vg2;
//Determination of diffn in the travel times for 2 signals 
del=t1-t2;
disp('sec',del,'The diffn in the travel times for 2 signals is'); 