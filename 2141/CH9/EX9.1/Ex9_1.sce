
clc
//initialisation of variables
p1=1//lbf/in^2
p2=300//lbf/in^2
v=0.01614 //lbf
Wp=v*(p2-p1)*144/774//Btu/lbm
h1=69.7//lbm
h2=h1+Wp //Btu/lbm
h3=1202.8//lbm
qH=h3-h2 //Btu/lbm
s4=1.9782
x=0.2535
h4=843.3 //Btu/lbm
Wt=h3-h4 //Btu/lbm
qL=h4-h1//Btu/lbm
//CALCULATIONS
n=(Wt-Wp)/qH*100 //per-cent
N=(qH-qL)/qH*100//per-cent
//RESULTS
printf('The thermal efficiency=% f per-cent',N)
