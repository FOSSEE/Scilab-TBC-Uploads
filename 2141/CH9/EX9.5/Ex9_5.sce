
clc
//initialisation of variables
h1=61.0
h3=63.0+2.1
h4=1407.7
h5=1387.3
s4=1.6343
s5=1.6251
h6=1106.0-0.1912*(1036.3)
nth=0.86
v=0.01615
p1=1//lbf/in^2
p2=800//lbf/in^2
np=0.8
Wp=v*(p2-p1)*144/(np*778)//Btu/lbm
//CALCULATIONS
Wt=nth*(h5-h6)//Btu/lbm
Wnet=Wt-Wp//Btu/lbm
qH=h4-h3//Btu/lbm
Nth=Wnet/qH*100//per-cent
//RESULTS
printf('Determine the thermal efficiency of the this cycle=% f per-cent',Nth)
