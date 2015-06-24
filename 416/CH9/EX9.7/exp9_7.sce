clear
clc
disp("example 9.7")
en=3*10^6
a=12
fen=0.1
Es=2/(12+2/3)
re=exp(Es)
printf("(a)\nratio of energies per collision is %f",re)
rietf=en/fen
ldie=log(rietf)
nc=ldie/Es
printf("(b)\npatio of iniial to final energies is %e \n logarithemic decrement in energy is %f \n number of collisions is %d",rietf,ldie,nc)
