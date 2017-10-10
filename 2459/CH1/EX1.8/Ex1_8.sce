//chapter1
//example1.8
//page16

R=8 // ohm
R1=10 // ohm
R2=20 // ohm
R3=12 // ohm
Rl=100 // ohm
//removing 100 ohm resistance, we form linear equations by assuming currents I1 through loop1 and I2 through loop2

//100=10*I1+20*(I1-I2)
//0=(12+8)*I2+20*(I2-I1)

//thus we get the following linear equations

//30*I1-20*I2=100
//-20*I1+40*I2=0
//solving these equations

a=[30 -20;-20 40]
b=[100;0]
x=inv(a)*b // matrix of I1 and I2

I2=x(2,1) // current through 8 ohm resistor

E0=I2*R
printf("voltage across AB with 100 ohm resistance not connected = %.3f V \n",E0)

R_equi=(R1*R2/(R1+R2))+R3
R0=R_equi*R/(R_equi+R)
printf("resistance between AB with 100 ohm removed and voltage source shorted = %.3f ohm \n",R0)

I=E0/(R0+Rl)
printf("current through 100 ohm resistor = %.3f A",I)

