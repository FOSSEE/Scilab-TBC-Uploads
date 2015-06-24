clear;
clc;

//Example12.6[Installing Reflective Films on Windows]
//Given:-
A_glazing=40;//[m^2]
SHGC_wof=0.766,SHGC_wf=0.261;//[kWh/year]
unit_c_e=0.08;//[$/kWh]
unit_c_f=0.5;//[$/therm]
COP=2.5,neta=0.80;
//Solution:-
//For the months of June,July,August and Sepetember
Q_summer=5.31*30+4.31*31+3.93*31+3.28*30;//[kWh/year]
//For the months oct,Nov,Dec,Jan,Feb,Mar,Apr
Q_winter=2.80*31+1.84*30+1.54*31+1.86*31+2.66*28+3.43*31+4.00*30;//[kWh/year]
c_l_d=Q_summer*A_glazing*(SHGC_wof-SHGC_wf);//[kWh/year]
disp("kWh/year",c_l_d,"The decrease in the annual cooling load is")
h_l_i=Q_winter*A_glazing*(SHGC_wof-SHGC_wf);//[kWh/year]
disp("kWh/year",h_l_i,"The increase in annual heating load is")
d_c_c=c_l_d*(unit_c_e)/COP;//[$/year]
i_h_c=h_l_i*(unit_c_f/29.31)/neta;//[$/year]
disp("per year",i_h_c,"and $",d_c_c,"The corresponding decrease in cooling costs and the increase in heating costs are $")
Cost_s=d_c_c-i_h_c;//[$/year]
disp("per year",Cost_s,"The net annual cost savings due to the reflective film is $")
I_cost=20*A_glazing;//[$]
disp(I_cost,"The implementation Cost of installing films is $")
pp=I_cost/Cost_s;//[years]
disp("years",pp,"Payback Period is")
