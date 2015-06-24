clc
clear

//INPUT
l=964.8;//latent heat of steam in B.Th.U per lb
q=4*15*l*778;//heat developed in ft lbs
w=30000*60;//work done is ft lbs

//CALCULATIONS
n=(w/q)*100;//efficiency of the engine
p=100-n;//percentage of heat wasted

//OUTPUT
mprintf('the percentage of the heat wasted is %3.2f',p)
