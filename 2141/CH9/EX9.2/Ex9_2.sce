
clc
//initialisation of variables
p1=1//lbf/in^2
p2=600//lbf/in^2
T=800//F
v=0.01614//lbm
Wp=v*(p2-p1)*144/778//Btu/lbm
h1=69.70
h2=h1+Wp//Btu/lbm
h3=1407.7//lbm
s3=1.6343//lbm
h4=913.3//lbm
Wt=h3-h4//Btu/lbm
Wnet=Wt-Wp//Btu/lbm
qH=h3-h2//Btu/lbm
//CALCULATIONS
N=Wnet/qH*100//per-cent
qL=h4-h1//Btu/lbm
Wnet=qH-qL//Btu/lbm
//RESULTS
printf('The cycle efficiency=% f Btu/lbm',Wnet)
