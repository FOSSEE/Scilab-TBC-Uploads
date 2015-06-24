clc
//initialisation of variables
t1=75//F
t2=92//F
t3=49.0//F
p=0.40//percent
p1=0.60//percent
h=30000//cy ft per min
v=0.7432//ft
s=0.622//ft
q=14.7//ft
h1=0.4298//ft
w=0.24//ft
w1=1061.0//ft
w2=0.445//ft
g=32.0//ft
g1=75//ft
t4=460//ft
r=200//Btu per min 
//CALCULATIONS
P=p1*v//psia
H=s*(P/(q-P))//lb vapor per lb dry air
H1=p*(h1)//psia
H2=p1*(H1/(q-H1))//lb vapor per lb dry air
P1=H-H2//lb
M=w*(t2)+H*[(w1+w2*(t2))]//Btu per lb dry air
M1=w*(t3)+H2*[(w1+w2*(t3))]//Btu per lb dry air
M2=P1*(t3-g)//Btu per lb dry air 
Q=M-(M1+M2)//Btu per lb dry air
V=144*(q-H1)*h/(53.3*(g1+t4))//lb
D=V*Q/r//tons
Hm=w*(g1)+H2*[w1+w2*(g1)]//Btu permlb dry air
Q1=V*(Hm-M1)//Btu per min
//RESULTS
printf('The dehumidfier equals=% f tons',D)
printf('The heat to be supplied to the heater is=% f Btu per min',Q1)
