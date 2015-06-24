
clc
//initialisation of variables
h=1306.9//lbf
h2=45.0 //lbf/in^2
h3=1181.6 //lbf
h4=1014.0 //lbf
w1=200000//lbm
w2=500000//lbm
p1=400 //lbf/in^2
p2=60 //lbf/in^2
T1=600 //F
T0=537 //F
T2=300//F
s=1.5894 //Btu/lbm-R
s2=1.6492 //Btu/lbm-R
s3=1.7455 //Btu/lbm-R
T0=537 //F
s0=0.0876 //Btu/lbm-R
t1=0.25//lbm
t2=0.75//lbm
//CALCULATIONS
V1=(h-h2)-T0*(s-s0)//Btu/lbm
V2=(h3-h2)-T0*(s2-s0)//Btu/lbm
V3=(h4-h2)-T0*(s3-s0)//Btu/lbm
M=V1-t1*(V2)-t2*(V3)//Btu/lbm
//RESULTS
printf('The reversible work per pound of steam or the the change state=% f Btu/lbm',M)
