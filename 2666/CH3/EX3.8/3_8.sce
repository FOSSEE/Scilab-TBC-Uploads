clc
//initialisation of variables
t=200//F
p=60//cu ft
q=400//Btu
p1=50//psia
h=144//ft
w=53.35//ft
t1=660//F
p2=0.24//ft
Cv=0.1715//ft
t2=778//R
//CALCULATIONS
W=(h*p1*p)/(w*t1)//lb
T=q/(W*p2)//Btu
W1=W*Cv*T//Btu
W2=(q-W1)*t2//ft-lb
T2=T+t1//R
V=p*(T2/t1)//cu ft
W3=h*p1*(V-p)//ft-lb
//RESULTS
printf('The heat must be removed from the air=% f ft-lb',W3)
