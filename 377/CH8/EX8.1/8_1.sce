disp("α(620nm)/α(775nm)=(2-Eg)^0.5/(1.6-Eg)^0.5");
a=56*10^6;  //say a=α
l=10^-7;
b=exp(-a*l);  //say b=T(620nm)
printf('\n The value of T(620nm) is %f percent',b*100);