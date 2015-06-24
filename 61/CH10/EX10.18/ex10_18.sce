//ex10.18
n=2;    //n is the number of stages of amplifier
f_cl=500;
f_cu=80*10^3;
f_cl_new=f_cl/(sqrt(2^(1/n)-1));
f_cu_new=f_cu*(sqrt(2^(1/n)-1));
BW=f_cu_new-f_cl_new;
disp(BW,'bandwidth in hertz')