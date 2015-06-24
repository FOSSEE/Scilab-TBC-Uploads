
//Example 6.18 page no 185
clear
clc
Rs=5        //kΩ
Rf=100      //kΩ
hie=1.1
Rc=10       //kΩ
Rl=10       //kΩ
hfe=50
d=((1/Rs)+(1/Rf)+(1/hie))*((1/Rf)+((Rc+Rl)/(Rc*Rl)))+((1/Rf)*((hfe/hie)-(1/Rf)))
printf("\n The value of d=%0.3f " ,d)


