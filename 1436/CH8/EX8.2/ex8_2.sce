//Example 8.2, page no-508
clear
clc
i=10*10^-3
R=1000
P=(i^2)*R
err_R=10
err_I=(2/100)*25*100/10
err_I2=2*err_I
err_p=err_I2+err_R
printf("%% error in I^2 = ± %d%%\n%% error in Power = ± %d%%",err_I2,err_p)
