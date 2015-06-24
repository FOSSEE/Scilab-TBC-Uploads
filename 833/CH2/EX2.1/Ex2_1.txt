//Caption:Find (a)all day efficiency (b)commercial efficiency on full load (c)efficiency on half load
//Exa:2_1
clc;
clear;
close;
P_s=50//Power supplied(in kVA)
V_1=440//Primary side voltage(in volt)
V_2=220//Secondary side voltage(in volt)
t_1=6//Full load(in hours)
t_2=2//50% load(in hours)
Cu_1=2//Copper loss on full load(in KW)
Fe=1//Iron losses(in KW)
E_1=P_s*t_1//Energy used on full load(in watt-hours)
E_2=0.5*P_s*t_2//Energy used on half load(in watt-hours)
Cu_2=Cu_1*0.25//Copper losses on half load(in watts)
E=(Cu_1*t_1)+(Cu_2*t_2)+(Fe*24)//Energy lost on losses(in watt-hours)
eff_1=(E_1+E_2)/(E_1+E_2+E)*100
disp(eff_1,'(a)All day efficiency(in%)=')
eff_2=(E_2)/(E_2+Cu_1+Fe)*100
disp(eff_2,'(b)commercial efficiency on full load(in%)=')
eff_3=(0.5*E_2)/(0.5*E_2+Cu_2+Fe)*100
disp(eff_3,'(c)efficiency on half load(in%)=')