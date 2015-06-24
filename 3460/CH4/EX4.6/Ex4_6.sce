clc;
clear all;
fi_min=30;  //Hz
fi_max=15*1e3;  //Hz
Delta=75*1e3;  //Hz

mf_max=(Delta/fi_min);
mf_min=(Delta/fi_max);

disp(mf_max,"maximun modulation index")
disp(mf_min,"minimum modulation index")
