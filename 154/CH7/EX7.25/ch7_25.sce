clc
disp("Example 7.25")
printf("\n")

Xavg=(2+4+11+5+7+6+9+10+3+6+8+4+1+3+5+12)/16;
//Let X=X^2eff
X=(2^2+4^2+11^2+5^2+7^2+6^2+9^2+10^2+3^2+6^2+8^2+4^2+1^2+3^2+5^2+12^2)/16
Xeff=sqrt(X);
printf("Xavg=%d\n Xeff=%3.2f\n",Xavg,Xeff)