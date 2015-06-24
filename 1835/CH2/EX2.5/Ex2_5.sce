//CHAPTER 2,ILLUSTRATION 5 PAGE 5
//TITLE:TRANSMISSION OF MOTION AND POWER BY BELTS AND PULLEYS
clc
clear
//=====================================================================================================
//input
n1=100// of driving shaft
n2=240//speed of driven shaft
p=11000//power to be transmitted in watts
c=250//centre distance in cm
d2=60//diameter in cm
b=11.5*10^-2//width of belt in metres
t=1.2*10^-2//thickness in metres
u=.25//co-efficient of friction 
pi=3.141
e=2.71
//===================================================================================================
//calculation for open bely drive
d1=n2*d2/n1
f=(d1-d2)/(2*c)//sin(alpha) for open bely drive
//angle of arc of contact for open belt drive is,theta=180-2*alpha
alpha=asind(f)
teta=(180-(2*alpha))*3.147/180//pi/180 is used to convert into radians
x=(e^(u*teta))//finding out the value of t1/t2
v=pi*d2*10*n2/60//finding out the value of t1-t2
y=p*1000/(v)
t1=(y*x)/(x-1)
Fb=t1/(t*b)/1000
//=======================================================================================================
//calculation for cross belt drive bely drive
F=(d1+d2)/(2*c)//for cross belt drive bely drive
ALPHA=asind(F)
THETA=(180+(2*ALPHA))*pi/180//pi/180 is used to convert into radians
X=(e^(u*THETA))//finding out the value of t1/t2
V=pi*d2*10*n2/60//finding out the value of t1-t2
Y=p*1000/(V)
T1=(Y*X)/(X-1)
Fb2=T1/(t*b)/1000
//========================================================================================================
//output
printf('for a open belt drive:\n')
printf('the tension in  belt is %.3f N\nstress induced is %.3f kN/m^2\n',t1,Fb)
printf('for a cross belt drive:\n')
printf('the tension in belt is %.3f N\nstress induced is %.3f kN/m^2\n',T1,Fb2)
