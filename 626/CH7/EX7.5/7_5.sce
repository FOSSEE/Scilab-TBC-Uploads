clear;
clc;
close;
disp("Example 7.5")
ps=1.5
es=0.9
gm=1.4
ts=1+(1/es)*(ps^((gm-1)/gm)-1)
ec=(gm-1)/gm*(log(ps))/log(ts)
disp(ts,"Total temperature ratio :")
disp(ec,"Compressor polytropic efficiency :")