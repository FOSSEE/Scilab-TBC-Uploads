
clc
//initialisation of variables
p1=18 //lbf/in^2
p2=180 //lbf/in^2
p3=175 //lbf/in^2
p4=170 //lbf/in^2
p5=168 //lbf/in^2
p6=20 //lbf/in^2
p7=20 //lbf//in^2
p8=19 //lbf/in^2
T1=20//F
T2=220//F
T3=180//F
T4=110//F
T5=104//F
q=2.0 //Btu/lbm
h1=80.527//lbm
h2=106.896//lbm
h5=32.067//lbm
h6=32.067//lbm
h7=32.067//lbm
h8=77.621//lbm
//CALCULATIONS
Wc=h2-h1-(-q)//Btu/lbm
qL=h8-h7//Btu/lbm
Beta=qL/Wc//Btu/lbm
//RESULTS
printf('The properties of the vapious points of the cycle =% f Btu/lbm',Beta)
