//Example 7.9, page no-442
clear
clc

wt_vap=500
wt_vap_to_sat=1500
total=wt_vap+wt_vap_to_sat
Rh=(wt_vap/total)*100
printf("RH = %d%%",Rh)
