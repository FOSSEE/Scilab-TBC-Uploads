clc;
clear all;
fi_min=30 //hz
fi_max=3*1e3  //hz
fi_=30*1e3 //hz

//part-a
Delta= 10*1e3 //Hz
mf_max=Delta/fi_min;
mf_min=Delta/fi_max;
disp("Part A")
disp(mf_min,"Minimum modulation index: ");
disp(mf_max,"Maximum modulation index: ");
//part-b 
Delta= 30*1e3 //Hz
mf_max=Delta/fi_min;
mf_min=Delta/fi_max;
disp("part B");
disp(mf_min,"Minimum modulation index: ");
disp(mf_max,"Maximum modulation index: ");
