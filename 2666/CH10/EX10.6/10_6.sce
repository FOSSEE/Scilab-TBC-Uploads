clc
//initialisation of variables
p1=300//psia
p2=25//psia
t=600//F
e=0.65//percent
h1=1314.7//ft
h2=1099.7//ft
p=101//psia
h3=1130.0//ft
d=107.5//Btu
hf=1132.0//Btu
//CALCULATIONS
H=h1-h2//ft
P=h1-(H/2)//Btu
R=(1-e)*(H/2)//Btu
h=P+R//if
h4=h-h3//Btu
D=d+h4//Btu
g=h1-(D/2)//Btu
R1=(1-e)*(D/2)//Btu
V=g+R1//Btu
hg=h-hf//Btu
R2=D/H//Btu
H2=h1-(H*R2)/2//psia
//RESULTS
printf('The isentropic expansion and enthalpy=% f psia',H2)
