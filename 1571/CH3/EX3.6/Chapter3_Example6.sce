clc
clear

//INPUT DATA 
w=26.6;//work done one horse in to raise the temperature in lb
T1=32;//temperature at initial in deg.F
T2=212;//temperature at final in deg.F
t=2.5;//time to raise the tmperature in hrs
p=25;//percentage of heat lossed 

//CALCULATIONS
//let x ft-lb per min be the rate at which horse worked//total work done in ft-lb wt W=x*150
//amount of heat generated in lb deg.F H=W/778
//only 75% of heat is utillised
x=w*180*100*778/((100-p)*150);//the rate at which horse worked

//OUTPUT
mprintf('the rate at which horse worked is %3.0f ft-lb wt/min',x)
