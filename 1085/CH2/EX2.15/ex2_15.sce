//Exam:2.15
clc;
clear;
close;
Atw_Cu=63.54;//atomic weight of copper
Atw_Si=28.09;//atomic weight of silicon
// 5 atoms of copper working in Cu_5_Si
Tw_Cu=5*Atw_Cu;//total weight of copper used in copper silicide
Tw_Si=Atw_Si;//total weight of silicon used in copper silicide
Percentage=(Tw_Si/(Tw_Cu+Tw_Si))*100;//percentage of Si in Copper silicide
disp(Percentage,'percentage of Si in Copper silicide(Cu_5_Si)=')