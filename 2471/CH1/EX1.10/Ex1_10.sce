clear ;
clc;
// Example 1.10
printf('Example 1.10\n\n');
printf('Page No. 19\n\n');
// given

//Monthly Energy Usage
qunty = [15*10^3 4*10^3 90*10^3]
cost = [4950 720  2250]// in Pound
common_basis1  = [738 117 90]// in 10^6 Wh
common_basis= [2655 421 324]// converted into 10^9 Joules
unit_cost = cost ./ common_basis1// in Pound per 10^6 Wh
p= 80;// production in tonnes
EI = ((sum(common_basis))/p)*10^9;
CI = sum(cost)/80;
printf('Monthly energy index is %3.2e J per tonne \n',EI)
printf('Monthly cost index is %.0f Pound per tonne \n\n',CI)//Deviation in answer is due to calculation error for sum of cost in the book

// Boiler House Energy Audit
qunty_b = [15000 10000]
Com_basis_b_1 = [2655 36]// in 10^9 J
Com_basis_b = [738 10]// in 10^6 Wh
Cost_b = [4950 250]// in Pound
b_output = 571*10^6;// in Wh
EI_b = (b_output/(sum(Com_basis_b)*10^6));
CI_b = (sum(Cost_b)/b_output)*10^3;// Pound converted into p
printf('Energy index  for boiler is %.3f \n',EI_b)
printf('Cost index for boiler is %3.2e p per Wh\n \n',CI_b)

//Power House Energy Audit
P_gen = 200*10^6;// Power generated in Wh
Com_basis_p_1 = [14.4 2055 -1000]// in 10^9 J
Com_basis_p = [4.0 571 -278]// in 10^6 Wh
Cost_p = [100 5196 -2530]// in Pound
CI_p = (sum(Cost_p)/P_gen)*10^3;// Pound converted into p
printf('Cost index for power house is %3.2e p per Wh\n\n',CI_p)//Deviation in answer is due to wrong calculation in the book

//Space Heating Energy Audit
deg_days = 260;// Number of degree-days
Com_basis_s_1 = [36 100 105]// in 10^9 J
Com_basis_s = [10.0 27.8 29.2]// in 10^6 Wh
Cost_s = [250 253 179]// in Pound
EI_s = ((sum(Com_basis_s)*10^6)/deg_days)
CI_s = (sum(Cost_s)/deg_days)
printf('Energy index  for space heating is %3.2e Wh per degree-day\n',EI_s)
printf('Cost index for space heating is %3.2f Pound per degree-day\n\n',CI_s)

//Process Energy Audit
T_pdt_output = 100;// in tonne
Com_basis_pr_1 = [216 720 810 316]// in 10^9 J
Com_basis_pr = [60 200 225 88]// in 10^6 Wh
Cost_pr = [1500 2766 2047 540]// in Pound
EI_pr = ((sum(Com_basis_pr)*10^6)/T_pdt_output);
CI_pr = (sum(Cost_pr)/T_pdt_output);
printf('Energy index  for Process Energy Audit is %3.2e Wh per tonne \n',EI_pr)
printf('Cost index for Process Energy Audit is %.2f Pound per tonne \n',CI_pr)
