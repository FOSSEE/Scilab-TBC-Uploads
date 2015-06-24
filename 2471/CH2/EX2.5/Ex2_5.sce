clear ;
clc;
// Example 2.5
printf('Example 2.5\n\n');
printf('Page No. 49\n\n');

// given
F= 10*10^3;// fuel oils in gallons
Cs= 2200;// cost of maintaining tanks per year in Pound
Ci= 1850;// cost of insulation of pipe in Pound

As= (Cs*.85);//company saving is 85 per cent to the cost
printf('Annual Saving on heating is %3.0f  Pound\n',As)


if(As> Ci) then
disp("The investment has a pay-back period of less than 1 year");
else
disp("The investment has not a pay-back period of less than 1 year");
end
