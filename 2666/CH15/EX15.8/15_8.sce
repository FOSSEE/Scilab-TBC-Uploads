clc
//initialisation of variables
t1=94//F
t2=50//F
t3=32//ft
p=0.7//percent
t=0.5//F
v=0.7906//ft
q=0.622//ft
r=0.24//ft
w=14.7//ft
w1=0.17811//ft
w2=1061.0//ft
w3=0.445//ft
//CALCULATIONS
P=p*v//lb vapor per lb dry air
H=q*(P/(w-P))//lb vapor per lb dry air
H1=q*(w1/(w-w1))//lb vapor per lb dry air
D=H-H1//lb per lb of dry air
M=r*(t1)+H*[(w2+w3*(t1))]//Btu per lb dry air
M1=r*(t2)+H1*[(w2+w3*(t2))]//Btu per lb dry air
P1=D*(t2-t3)//Btu
Q=M-(M1+P1)//Btu per lb dry air
//RESULTS
printf('the equation of steady flow =% f Btu per lb dry air',Q)
