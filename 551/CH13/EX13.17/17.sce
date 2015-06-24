clc
r=15;
y=1.4;

//V3-V2=0.06*(V1-V2)
rho=1.84; //cut off ratio rho=V3/V2

n_diesel=1-1/y/r^(y-1)*((rho^y-1)/(rho-1));
disp("efficiency =")
disp(n_diesel)
