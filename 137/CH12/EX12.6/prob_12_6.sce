//page 552
//prob 12.6
//for the same transmission bandwidth variance of PM and FM systems is same
//hence the ratio of SNR of PM to FM is B^2/(3Bm'^2)
//assuming 6=1
clc;
B=3/(2*%pi);//because W=2*%pi*B
//variance is Bm2
f0=0;f1=15;
y=integrate('(f^2)*(%e^(-(f^2)*2*(%pi^2)))','f',f0,f1);
g=integrate('%e^(-(f^2)*2*(%pi^2))','f',f0,f1);
Bm2=y/g;
l=(B^2)/(3*(Bm2));
disp(l,'factor of superiority of PM over FM');
