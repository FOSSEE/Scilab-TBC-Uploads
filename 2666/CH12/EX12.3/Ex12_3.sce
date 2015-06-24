
clc
//initialisation of variables
p=5//tons
q=200//ft
t1=20//F
t2=60//F
s=0.01468//Btu per lb
g=80.49//ft
f=67.94//ft
h=21.57//Btu per lb
h1=84.82//ft
d=42.4//tons
v=1.121//ft
v2=1.1097//ft per min
//CALCULATIONS
H=g-s*f//Btu per lb
H1=(p*q)/(H-h)//lb per min
H2=H1*(h1-H)//Btu per min
G=H2/d//hp
Cv=(p*q)/H2//hp
V=v-s*v2//cu ft per lb
D=V*H1//cu ft per min
//RESULTS
printf('the horsepower required=% f Btu per min',H2)
printf('The cp=% f hp',Cv)
printf('The piston displacement of the compressor=% f cu ft per lb',D)
