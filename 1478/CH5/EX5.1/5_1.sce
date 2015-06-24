//phase rule and steels//
//problem 1//
clc
pc_tin=(73/100)//% composition of tin in alloy//
eutectic_tin=64//% composition of tin in eutectic alloy//
wt_alloy=1//weight of alloy in terms of kg//
w=wt_alloy*1000//weight of alloy in terms of gms//
wt_tin=pc_tin*w//wight of tin in alloy(gms)//
wt_lead=w-wt_tin//wight of lead in alloy(gms)//
wt_eutectic_tin=wt_lead*eutectic_tin/(100-eutectic_tin)//weight of eutectic tin(gms)//
To=wt_lead+wt_eutectic_tin//total mass of eutectic alloy(gms)//
printf("\nTotal mass of eutectic in alloy is %.f g",To);