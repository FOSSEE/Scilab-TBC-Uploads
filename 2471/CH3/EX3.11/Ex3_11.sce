clear ;
clc;
// Example 3.11
printf('Example 3.11\n\n');
printf('Page No. 72\n\n');

// given
Cash_out = 80000;// Present value of cash outflow for both projects E and F
r_r = .2;// Rate of return
n = 5;// years

d = [0.833 0.694 0.579 0.482 0.402]// Discount Factor for 20% of rate of return for 5 years
Ce = [10000 20000 30000 40000 50000]// Cash flow for project E in Pound
Pe = [8330 13880 17370 19280 20100]// Present value for project E in Pound

Cf = [50000 40000 30000 20000 10000]// Cash flow for project F in Pound
Pf = [41650 27760 17370 9640 4020]// Present value for project F in Pound

Cash_inE = sum(Pe)//Present value of cash inflow in Pound
Cash_inF = sum(Pf)//Present value of cash inflow in Pound

Net_E = Cash_inE - Cash_out;// net present value for project E in Pound
Net_F = Cash_inF - Cash_out;// net present value for project F in Pound

if (Net_E>Net_F) then
    disp('Project E is selected based on NPV')
else
    disp('Project F is selected based on NPV')
end
