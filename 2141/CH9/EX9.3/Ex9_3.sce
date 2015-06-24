
clc
//initialisation of variables
h3=1407.7
s3=1.6343
h4=1170.5
h5=1430.5
s5=1.9015
v=0.01614
h1=69.7
p1=1 //lbf/in^2
p2=600//lbf/in^2
h6=1106.0-0.0416*1036.8//Btu/lbm
Wp=v*(p2-p1)*144/778//Btu/lbm
//CALCULATIONS
Wt=(h3-h4)+(h5-h6)//Btu/lbm
h2=h1+Wp//Btu/lbm
qH=(h3-h2)+(h5-h4)//Btu/lbm
Wnet=Wt-Wp//Btu/lbm
N=Wnet/qH*100//per-cent
//RESULTS
printf('Determine the cycle efficiecy=% f per-cent',N)
