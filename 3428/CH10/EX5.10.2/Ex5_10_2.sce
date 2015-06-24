//Section-5,Example-2,Page no.-D.5
//To find the fraction of sample remains after 100 minutes of reaction.
clc;
t_h=50       //t_h=t_1/2(Time required for the completion of one half of the reaction)
k=(0.693/t_h)          //Since,           k=2.303/t*log(R_0/R_t)
t=(t_h)*2         //Time required for the complete reaction.
R=10^((-k*t)/2.303)          //R=(R_t)/(R_0)
disp(R,'Required fraction of sample')


