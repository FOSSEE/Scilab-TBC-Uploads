clc
clear
//INPUT DATA
a=74;//Mass of constituent C
b=4.3;//Mass of constituent H2
c=2.7;//Mass of constituent S
d=1.5;//Mass of constituent N2
e=5.5;//Mass of constituent H2O
f=5;//Mass of constituent O2
g=7;//Mass of constituent ash

a1=6.166;//Moles of constituent C
b1=1.075;//Moles of constituent H2
c1=0.084;//Moles of constituent S
d1=0.053;//Moles of constituent N2
e1=0.3055;//Moles of constituent H2O
f1=0.156;//Moles of constituent O2
g1=0;//Moles of constituent ash
X1=26.955;//Moles of products N2


//CALCULATIONS
//C+O2=CO2
x1=a1;//Moles of CO2 required
//H2+(1/2)O2=H20
x2=b1/2;//Moles of H2 required
//S+O2=SO2
x3=c1;//Moles of O2 required
x4=d1;//Moles of O2 required
x5=e1;//Moles of O2 required
x5=f1;//Moles of O2 required
x6=g1;//Moles of O2 required
X=x1+x2+x3+x4+x5+x6;//total moles of products
Y=a1+(b1+e1)+(2*X1)+(X)+c1;//Total moles of products required

//OUTPUT
printf('For 100 percentage excess air used,Total moles of products required is %3.3f',Y)



