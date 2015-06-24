clear ;
clc;

// Example 3.5
printf('Example 3.5\n\n');
//Page no. 84
// Solution

// Basis 100 kg coal
ml_r = 9;
wt_r = (9*1.008)/(1*12) ;//conversion of mole ratio to wt.ratio
m1 = 2 ;//[kg] wt.of sulphur
m2 = 1 ;//[kg] wt. of nitrogen
m3 = 6 ;//[kg] wt. of oxygen
m4 = 11 ;//[kg] wt. of ash
m5 = 3 ;//[kg] wt. of water
m6 = (1*77)/(wt_r+1) ;//[kg] wt. of carbon
m7  = wt_r*m6 ;//[kg] wt. of hydrogen
wc = 100-(m4+m5)  ;//[kg] wt. of coal excluding ash and water
wf1 = m1/wc;
wf2 = m2/wc;
wf3 = m3/wc;
wf4 = m4/wc;
wf6 = m6/wc;
wf7 = m7/wc;
tf = wf1+wf2+wf3+wf6+wf7;
printf(' Component        kg.            Mass fraction');
printf('\n C                %.2f          %.2f\n',m6,wf6);
printf(' H                %.2f          %.2f\n',m7,wf7);
printf(' S                %.2f           %.2f\n',m1,wf1);
printf(' N                %.2f           %.2f\n',m2,wf2);
printf(' O                %.2f           %.2f\n',m3,wf3);
printf('\n Total            %.2f          %.2f\n',wc,tf);
