clear ;
clc;
// Example 2.4
printf('Example 2.4\n\n');
printf('Page No. 47\n\n');

// given
F1= 500*10^3;// fuel oil in gallons
F2= 500*10^3;// coal in gallons in Pound
C1= 165*10^3;// cost of oil per year in Pound
C2= 92*10^3;// cost of an equivalent of coal in Pound
Ce= 100*10^3;// capital cost of extra handling eqiupment

Cm= (Ce*0.2);// Maintenance , interest costs per year
As= C1-C2;// Annual Saving in Pound
printf('Annual Saving is %3.0f Pound\n',As)

if((2*As)> Ce) then
disp("Replacing an obsolete boiler plant is considerable");
else
disp("Replacing an obsolete boiler plant is not considerble");
end
