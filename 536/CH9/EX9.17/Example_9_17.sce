clc;
clear;

printf("\n Example 9.17\n");

ri_u=0.2;// Inner radius of the upper ring
ro_u=0.3;// Outer radius of the upper ring
ri_l=0.3;// Inner radius of the lower ring
ro_l=0.4;// Outer radius of the lower ring
//F23 = ((A12/A2)*(F12_34))-F12_4-((A1/A2)*(F1_34 - F14))
//Laying out the data in tabular form and obtaining F from Figure 9.40 ii, y,then
F12_34=0.4;
F12_4=0.22;
F1_34=0.55;
F14=0.30;
A12_A2=ro_l^2/(ro_l^2-ri_l^2);
A1_A2=ro_u^2/(ro_l^2-ri_l^2);
F23=((A12_A2)*(F12_34-F12_4))+((A1_A2)*(F1_34-F14));
printf("\n F23 = %.2f",F23);