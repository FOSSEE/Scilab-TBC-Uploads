// 5.2
clc;
eta=0.6;
fn=2400;
M=0.98;
//M=1/[[(1-u^2)^2]+(2*u*eta)^2]^0.5; ..........(i)
// On solving the above equation we get u=0.79
u=0.79;
fu=u*fn;
printf("\nupper value of range=%.0f Hz",fu)

//Now let M=1.02, on solving equation (i) we have u=0.29
u=0.29;
fl=u*fn;
printf("\nlower value of range=%.0f Hz",fl)
disp('So, the range of the frequency is from 696 to 1896 Hz')
