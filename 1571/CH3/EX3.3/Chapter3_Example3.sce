clc
clear

//INPUT DATA 
cp=0.12;//specific heat of iron in kj/kg-K
m=25;//mass of iron in lb
h=0.4;//horse power developed in 3 min
t=3;//time taken to develop the horse power in min
T=17;//raise in temp in deg.C

//CALCULATIONS
w=h*33000*t;//total work done in ft-lb
H=m*cp*T;//aount of heat developed in B.Th.U
J=(w)/H;//the value of mechanical equivalent of heat

//OUTPUT
mprintf('the mechanical equivalent of water is %3.1f ft-lb/B.Th.U',J)
