clear ;
clc;
// Example 3.12
printf('Example 3.12\n\n');
printf('Page No. 72\n\n');

// given
Cash_inG = 43000;// Present value of cash inflow for project G in Pound
Cash_outG = 40000;// Present value of cash outflow for  project G in Pound
Net_G = Cash_inG - Cash_outG;// Net present value for G in Pound
PI_G = (Cash_inG/Cash_outG);// Profitability index for G

Cash_inH = 23000;// Present value of cash inflow for project H in Pound
Cash_outH = 20000;// Present value of cash outflow for  project H in Pound
Net_H = Cash_inH - Cash_outH;// Net present value for H in Pound
PI_H = (Cash_inH/Cash_outH);// Profitability index for H

//The higher the profitability index the more desirable is the project.
if (PI_G>PI_H) then
    disp('Project G is more attractive than Project H')
else
    disp('Project H is more attractive than Project G')
end


