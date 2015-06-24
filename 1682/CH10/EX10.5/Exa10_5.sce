//Exa 10.5
clc;
clear;
close;
i=9;//% per annum
n=50;//in years
//Project A : 
disp("Project A : ");
P_A=150000000;//in RS.
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE_A=P_A*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1);
OMC_A=2000000;//in Rs.
Psy_A=10000000;//in Rs.
Cpy_A=AE_A+OMC_A-Psy_A;//in Rs.
disp(Cpy_A,"Costs/year : ");
Fcs_A=2500000;//in Rs.
Ib_A=3500000;//in Rs.
Rb_A=1000000;//in RS.
Bpy_A=Fcs_A+Ib_A+Rb_A;//in Rs.
disp(Bpy_A,"Benefits/year : ");
BCratio_A=Bpy_A/Cpy_A;//unitless
disp(BCratio_A,"BC Ratio of project A : ")
//Project B : 
disp("Project B : ");
P_B=250000000;//in Rs.
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE_B=P_B*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1);
OMC_B=2500000;//in Rs.
Psy_B=12000000;//in Rs.
Cpy_B=AE_B+OMC_B-Psy_B;//in Rs.
disp(Cpy_B,"Costs/year : ");
Fcs_B=3500000;//in Rs.
Ib_B=4500000;//in Rs.
Rb_B=2000000;//in RS.
Bpy_B=Fcs_B+Ib_B+Rb_B;//in Rs.
disp(Bpy_B,"Benefits/year : ");
BCratio_B=Bpy_B/Cpy_B;//unitless
disp(BCratio_B,"BC Ratio of project B : ")
//Project C : 
disp("Project C : ");
P_C=400000000;//in Rs.
//FormulC : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE_C=P_C*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1);
OMC_C=3500000;//in Rs.
Psy_C=18000000;//in Rs.
Cpy_C=AE_C+OMC_C-Psy_C;//in Rs.
disp(Cpy_C,"Costs/year : ");
Fcs_C=5000000;//in Rs.
Ib_C=6000000;//in Rs.
Rb_C=3500000;//in RS.
Bpy_C=Fcs_C+Ib_C+Rb_C;//in Rs.
disp(Bpy_C,"Benefits/year : ");
BCratio_C=Bpy_C/Cpy_C;//unitless
disp(BCratio_C,"BC Ratio of project C : ")
disp("From the computations it is clear that only alternative A is eligible because other two alternatives have BC ratio less than one.")