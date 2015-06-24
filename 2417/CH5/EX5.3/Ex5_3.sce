//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.3\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.3  (page no. 188) 
// Solution

//The necessary interpolations are best done in tabular forms as shown:
//  p    hg
// 115  1190.4  table 2
// 118  1190.8  (hg)118=1190.8
// 120  1191.1
hg=1190.4+(3/5)*(1191.1-1190.4); //Btu/lbm //enthaply
printf("The enthalpy of saturated steam at 118 psia is %f Btu/lbm\n",hg);

//  p    vg
// 115  3.884  table 2
// 118  3.792  (vg)118=3.790
// 120  3.730
vg=3.884-(3/5)*(3.884-3.730); //ft^3/lbm //specific volume
printf("The specific volume of saturated steam at 118 psia is %f ft^3/lbm\n",vg);

//  p    sg
// 115  1.5921  table 2
// 118  1.5900  (sg)118=1.5900
// 120  1.5886
sg=1.5921-(3/5)*(1.5921-1.5886); //entropy
printf("The entropy of saturated steam at 118 psia is %f\n",sg);

//  p    ug
// 115  1107.7  table 2
// 118  1108.06  (ug)118=1180.1
// 120  1108.3
ug=1107.7-(3/5)*(1108.3-1107.7); //internal energy
printf("The internal energy of saturated steam at 118 psia is %f\n",ug);
//The interpolation process that was done in tabular form for this problem can also be demonstated by refering to figure 5.8 for the specific volume.It will be 
//seen that the results of this problem and the tabulated values are essentially in exact agreement and that linear interpolation is satisfactory in these tables.
