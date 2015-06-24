clc
clear
//INPUT DATA
t=0.004*10^-2//thickness of transparent sheet in m
d=0.0027*10^-2//distance of mirror displaced in m

//CALCULATION
X=((d/t)+1)//refractive index of the material

//OUTPUT
printf('The refractive index of material is %3.3f',X)
