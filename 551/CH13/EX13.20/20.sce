clc

pm=7.5; //bar
r=12.5;
p1=1; //bar
y=1.4;

// pm = p1*r^y*[y*(rho-1) - r^(1-y)*(rho^y-1)]/(y-1)/(r-1)
//Solving above equation we get 
rho=2.24;

%cutoff=(rho-1)/(r-1)*100;
disp("%cutoff=")
disp(%cutoff)
disp("%")