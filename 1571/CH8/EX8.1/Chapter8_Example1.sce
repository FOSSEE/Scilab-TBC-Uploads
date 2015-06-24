clc
clear

//INPUT
l=80;//latent heat of fusion in cal
j=4.2*10^7;//joules constant in ergs/cal
w=-0.092*10^6;//work done in changing phase change in ergs

//CALCULATIONS
q=l*j;//heat added in ergs
du=q-w;//internal energy in ergs

//OUTPUT
mprintf('the change in internal energy is %3.2f ergs',du)
