//to find the gyroscopic reaction of the airscrew on the aeroplane when it has a) three blades and b)two blades
//gravitaional force (g)=32.2 ft/s^2
clc
//given
printf("\n")
I=250//lb ft2
n=1600//rpm
v=150//mph
r=500//ft
w=%pi*160/3//angular velocity of rotation
wp=(150*88)/(60*500)//angular velocity of precession
//a) with three bladed screw
//T=I*w*wp
T=(250/32.2)*%pi*(160/3)*wp
//b)with two bladed air screw
//T1=2*I*w*wp*sin(o)
printf("The magnitude of gyroscopic couple is given by %.0f lb ft\n",T)
//Tix=T(1-cos(2o)) lb ft
//T1y=Tsin(2o)) lb ft
printf("The component gyroscopic couple in the vertical plane =%.0f(1-cos(2x)) lb ft\n",T)
printf("The component gyroscopic couple in the horizontal plane =%.0f(sin(2x)) lb ft\n",T)
// for direction refer the book example 
