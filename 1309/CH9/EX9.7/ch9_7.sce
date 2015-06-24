clc;
clear;
printf("\t\t\tChapter9_example7\n\n\n");
// (a)  Determine the  UA product for the  exchanger.  (b) Calculate  the  exit temperatures for the exchanger, assuming that only the inlet temperatures are known
// properties of engine oil at (190 + 158)/2 = 174°F = 176 degree  F from appendix table C4
rou_1= 0.852*62.4; // density in lbm/ft^3 
cp_1=0.509; // specific heat BTU/(lbm-degree Rankine) 
v_1= 0.404e-3; // viscosity in ft^2/s 
kf_1 = 0.08; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
a_1 = 2.98e-3; // diffusivity in ft^2/hr 
Pr_1 = 490; // Prandtl Number 
m_1=39.8; // mass flow rate in lbm/min
// temperatures in degree F
T1=190;
T2=158;
// properties of air at (126 + 166)/2 = 146°F = 606 degree R from appendix table D1
rou_2= 0.0653; // density in lbm/ft^3 
cp_2=0.241; // specific heat BTU/(lbm-degree Rankine) 
v_2= 20.98e-5; // viscosity in ft^2/s 
kf_2 = 0.01677 ; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
a_2 = 1.066; // diffusivity in ft^2/hr 
Pr_2 = 0.706; // Prandtl Number 
m_2=67; // mass flow rate in lbm/min
// temperatures in degree F
t1=126;
t2=166;
// Heat Balance
q_air=m_2*cp_2*60*(t2-t1);
q_oil=m_1*cp_1*60*(T1-T2);
printf("\nThe heat gained by air is %.2e BTU/hr",q_air);
printf("\nThe heat lost by oil is %.2e BTU/hr",q_oil);
// for counterflow
LMTD=((T1-t2)-(T2-t1))/(log((T1-t2)/(T2-t1)));
printf("\nThe LMTD for counter flow configuration is %.1f degree F",LMTD);
// Frontal Areas for Each Fluid Stream
Area_air=(9.82*8)/144;
Area_oil=(3.25*9.82)/144;
printf("\nThe Core frontal area on the air side is %.3f sq.ft\nThe Core frontal area on the oil side is %.3f sq.ft ",Area_air,Area_oil);
// Correction Factors (parameters calculated first)
S=(t2-t1)/(T1-t1);
R=(T1-T2)/(t2-t1);
F=0.87; //value of correction factor from figure 9.21a corresponding to above calculated values of S and R
// Overall Coefficient (q = U*A*F*LMTD)
UA=q_air/(F*LMTD);
printf("\nThe Overall Coefficient is %.2e BTU/(hr. degree R)",UA);
// determining the capacitances
mcp_air=m_2*cp_2*60;
mcp_oil=m_1*cp_1*60;
printf("\nThe capacitance value of air is %d BTU/(hr. degree R)",mcp_air);
printf("\nThe capacitance value of engine oil is %d BTU/(hr. degree R)",mcp_oil);
if mcp_air>mcp_oil then
    mcp_max=mcp_air;
    mcp_min=mcp_oil;
    printf("\nEngine Oil has minimum capacitance");
    else mcp_max=mcp_oil;
    mcp_min=mcp_air;
    printf("\nAir has minimum capacitance");
end
// determination of parameters for determining effectiveness
mcp_min_max=mcp_min/mcp_max;
NTU=(UA/mcp_min);
printf("\nThe required parameters are mcp_min/mcp_max=%.3f and (UoAo/mcp_min)=%.2f",mcp_min_max,NTU);
effectiveness=0.62; //value of effectiveness from figure 9.21b corresponding to the above calculated values of capacitance ratio and (UoAo/mcp_min):');
t2_c=(T1-t1)*effectiveness+t1;
T2_c=T1-(mcp_min_max)*(t2_c-t1);
printf("\n\t\t\tSummary of Requested Information\n");
printf("\n(a) UA = %.2e BTU/(hr. degree R)",UA);
printf("\n(b) The Outlet temperatures (degree F)");
printf("\n\tCalculated\tGiven in Problem Statement");
printf("\nAir\t\t%d\t%d",t2_c,t2);
printf("\nEngine Oil\t%d\t%d",T2_c,T2);

