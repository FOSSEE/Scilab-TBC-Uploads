clear ;
clc;
// Example 2.3
printf('Example 2.3\n\n');
printf('Page No. 46\n\n');

// given
F= 350*10^3;// fuel oils in gallons
Ci= 5000;// cost of insulation of tanks

As= 7500;//Annual Saving in Pound

if(As> Ci) then
disp("The investment has a pay-back period of less than 1 year");
else
disp("The investment has not a pay-back period of less than 1 year");
end
// Note- Since here pack back period is less than 1 year and the company is in profit so they can go with this fuel oil,
// although it can be noted that there are more problems handling heavy fuels oils 
//and that the pay-back increases considerably the smaller the installation.
//So the company can changeover from oil to coal as a fuel.
