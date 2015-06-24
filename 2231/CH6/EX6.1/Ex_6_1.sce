//Example 6_1
clc;
clear;close;

//Given data: 
hp=[50 100 150 120 0];//hp
t=[20 20 10 20 15];//seconds

//Solution :
hp_rms_t=0;//initializing
for i=1:5
    hp_rms_t=hp_rms_t+(hp(i)^2*t(i));//hp
end
hp_rms=sqrt(hp_rms_t/sum(t));//hp
disp(hp_rms,"Required hp(rms)");
disp("Motor size should be 100 hp");
