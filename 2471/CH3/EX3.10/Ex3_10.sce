clear ;
clc;
// Example 3.10
printf('Example 3.10\n\n');
printf('Page No. 71\n\n');

// given
C = 2500;// Cost of the project
P = 1000;// Cash in flow
r_r = 0.12;// Rate of return 
S = 0;// Zero salvage value
n = 4;//years

for j= 1:1:4 // as for four years
    d_(j) = P*(1/(1+r_r)^j);
    end


P_v = d_(1)+d_(2)+d_(3)+d_(4);//Present value of cash inflow
N = P_v-C;
printf('Net present value is %.0f Pound\n',ceil(N))

if(P_v>C) then
    disp('The project may be undertaken')
else
    disp('The project may not be undertaken')
    end

