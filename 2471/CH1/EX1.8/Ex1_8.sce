clear ;
clc;
// Example 1.8
printf('Example 1.8\n\n');
printf('Page No. 16\n\n');
// given

qunty= [40 10000 400 90000]
unit_price= [29 0.33 0.18 0.025]
cost= (unit_price .* qunty)// in Pound
common_basis= [310 492 11.7 90]// in 10^6 Wh
per_unit_cost= (unit_price .* qunty) ./ common_basis// Pound per 10^6 Wh
p= 150;// production in tonnes
EI= sum(common_basis)*10^6/150
CI= sum(unit_price .* qunty)/150
printf('energy index is %3.2f Wh per tonne \n',EI)
printf('cost index  is %3.2f Wh per tonne \n',CI)
