clc;
clear;
printf("\t\t\tChapter9_example6\n\n\n");
// Using the effectiveness-NTU method to calculate the outlet temperatures of the fluids
// Data from Example 9.5
// properties of (distilled) water at 104°F 
m_1=170000; // mass flow rate in lbm/hr
T1=110; // temperature in degree F
cp_1=0.998; // specific heat BTU/(lbm-degree Rankine) 
// properties of (raw) water at 68°F 
m_2=150000; // mass flow rate in lbm/hr
t1=65; // temperature in degree F
cp_2=0.9988; // specific heat BTU/(lbm-degree Rankine) 
Uo=350; // exchanger coefficient
Ao=703.7;
// The effectiveness-NTU approach is used  when the overall heat transfer coefficient is known
// determining the capacitances
mcp_raw=m_2*cp_2;
mcp_distilled=m_1*cp_1;
printf("\nThe capacitance value of raw water is %d BTU/(hr. degree R)",mcp_raw);
printf("\nThe capacitance value of distilled water is %d BTU/(hr. degree R)",mcp_distilled);
if mcp_raw>mcp_distilled then
    mcp_max=mcp_raw;
    mcp_min=mcp_distilled;
    printf("\nDistilled water has minimum capacitance");
    else mcp_max=mcp_distilled;
    mcp_min=mcp_raw;
    printf("\nRaw water has minimum capacitance");
end
// determination of parameters for determining effectiveness
mcp_min_max=mcp_min/mcp_max;
UA_mcpmin=(Uo*Ao)/(mcp_min);
printf("\nThe required parameters are mcp_min/mcp_max=%.3f and (UoAo/mcp_min)=%.2f",mcp_min_max,UA_mcpmin);
effectiveness=0.58; //value of effectiveness from figure 9.15 corresponding to the above calculated values of capacitance ratio and (UoAo/mcp_min)
qmax=mcp_min*(T1-t1);
printf("\nThe maximum heat transfer is %.2e BTU/hr",qmax);
q=effectiveness*qmax; // actual heat transfer
printf("\nThe actual heat transfer is %.2e BTU/hr",q);
t2=(q/mcp_raw)+t1;
T2=T1-(q/mcp_distilled);
printf("\nThe Outlet temperatures are:\n\tRaw Water:%.1f degree F\n\tDistilled Water:%.1f degree F\n",t2,T2);

