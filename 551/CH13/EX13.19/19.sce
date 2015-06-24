clc
r=14; //let clearance volume be unity
y=1.4;

//When the fuel is cut-off at 5%
rho1=5/100*(r-1)+1;
n_diesel1=1-1/y/r^(y-1)*((rho1^y-1)/(rho1-1));

//When the fuel is cut-off at 8%
rho2=8/100*(r-1)+1;
n_diesel2=1-1/y/r^(y-1)*((rho2^y-1)/(rho2-1));

%loss=(n_diesel1-n_diesel2)*100;
disp("percentage loss in efficiency due to delay in fuel cut off =")
disp(%loss)
disp("%")