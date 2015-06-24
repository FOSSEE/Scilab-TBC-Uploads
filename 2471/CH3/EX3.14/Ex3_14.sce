clear ;
clc;
// Example 3.14
printf('Example 3.14\n\n');
printf('Page No. 74\n\n');

// given
n = 5;//years
C = 80000;// Cost of the project in Pound
Cash_in = [10000 20000 30000 40000 50000]// Cash inflow in Pound
r_d1 = 15;// Discount factor of 15%
r_d2 = 18 ;// Discount factor of 18%
r_d3 = 20;// Discount factor of 20%

//At discount of 15%
df_1 = [0.870 0.756 0.658 0.572 0.497]// Discount factor for every year
PV_1 = [8700 15120 19740 22880 24850]// Present value
Net_1 = sum (PV_1);// net present value


//At discount of 18%
df_2 = [0.847 0.718 0.609 0.516 0.437]// Discount factor for every year
PV_2 = [8470 14360 18270 20640 21850]// Present value
Net_2 = sum (PV_2);// net present value


//At discount of 20%
df_3 = [0.833 0.694 0.579 0.482 0.402]// Discount factor for every year
PV_3 = [8330 13880 17370 19280 20100]// Present value
Net_3 = sum (PV_3);// net present value

// f = N.P.V. cash inflow - N.P.V. cash outflow
//(1) By Numerical Method
ff = 2*((sum (PV_2) - C)/(sum (PV_2) - sum(PV_3)));// in percentage
f = 18 + ff;
printf('the internal rate of return in percentage is %3.2f \n\n',f)// Deviation in answer due to direct substitution

//(2) By Graphical Interpolation
f_1 = (sum (PV_1) - C)/10^3;//At discount factor of 15%
f_2 = (sum (PV_2) - C)/10^3;//At discount factor of 18%
f_3 = (sum (PV_3) - C)/10^3;//At discount factor of 20%

x = [f_1 f_2 f_3];
y = [r_d1 r_d2 r_d3];
plot(x,y,'r*');

plot2d (x,y);// please see the corresponding graph in graphic window
xtitle('Discount factor against f','f ( *10^3 Pound)','Discount factor(%)')
regress(x,y)
coefs = regress(x,y);
printf('the internal rate of return in percentage is %3.1f \n',coefs(1))// Deviation in answer due to direct substitution


