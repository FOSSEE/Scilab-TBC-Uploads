//Example 2.1  On Law Of Continuity

// Initialisation of variables
dA_by_dS = -0.1;
A = 4;
V = 90;

// Calculations
dV_by_dS = -1*V*dA_by_dS/A;
if(dV_by_dS > 0 )  then
    flag = "Increasing";
else flag = "Decreasing";
end

//Results 
disp(dV_by_dS,flag, "The Velocity (ft/sec)is :");

