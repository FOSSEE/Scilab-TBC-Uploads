//Section-5,Example-1,Page no.-D.5
//To show that for a first order reaction t_99.9=10*t_1/2.
clc;
//at t=t_1/2,R_t=(R_0/2) and at t=t_99.9,R_t=0.001*R_0
//t_99.9=((2.303/k)*(log10(R_0/0.001R_0)))
//t_1/2=((2.303/k)*(log10(R_0/(R_0/2)))
t=((2.303*3)/(0.693))                    //t=t_99.9/t_1/2
disp(t,'Ratio of t_99.9=10*t_1/2 for the first order reaction')

