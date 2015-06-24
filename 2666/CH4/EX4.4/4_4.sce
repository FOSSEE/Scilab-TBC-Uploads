clc
//initialisation of variables
t=1200//F
t1=1660//F
p1=39.7//lbf
p2=14.7//lbf
cp=0.24//Btu
v1=4930000//ft
//CALCULATIONS
T=(t1)/(p1/p2)^(0.4/1.4)//R
V=cp*(t1-T)//Btu
V2=sqrt(v1)//ft per sec
//RESULTS
printf('the steady of flow equation reduces=% f ft per sec',V2)
