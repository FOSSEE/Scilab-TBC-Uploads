clc; funcprot(0); //Example 20.3

//Initializing the variables
c = 1250;
Dt = 0.02;
Dv = 0.5;
rho = 1000;
v =0.5;

//Calculations
cDt = c*Dt;
Dp = rho*c*Dv;
DOv_DOt = Dv/Dt;
vDOv_DOt = v*Dv/cDt;
DOp_DOt = Dp/Dt;
vDOp_DOx = v*Dp/cDt;
Error = [vDOv_DOt*100/DOv_DOt vDOp_DOx*100/DOp_DOt];
disp(Error, "The percentage errors are given below are very small hence can be neglected :");