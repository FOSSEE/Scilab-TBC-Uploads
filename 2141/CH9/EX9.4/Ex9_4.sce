
clc
//initialisation of variables
h5=1407.7
h6=1170.5
h7=913.3
h1=69.7
v=0.01614
v2=0.01738
p1=1//lbf/in^2
p2=60//lbf/in^2
Wp=0.2//Btu/lbm
h3=262.1
h6=1170.5
h7=913.3
h4=263.8
p1=60//lbf/in^2
p2=600//lbf/in^2
g=144//ft
T=778//F
//CALCULATIONS
h2=h1+Wp//Btu/lbm
m=(h3-h1)/(h6-h2)//Btu/lbm
Wt=(h5-h6)+(1-m)*(h6-h7)//Btu/lbm
qH=(h5-h4)//Btu/lbm
Wp2=v2*(p2-p1)*g/T//Btu/lbm
Wnet=Wt-0.825*Wp-Wp2//Btu/lbm
N=Wnet/qH*100//per-cent
//RESULTS
printf('determine the cycle efficiency=% f per-cent',N)
