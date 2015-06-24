clc

row=2.7*10^-6//ohm cm
l=10^-1//cm
tm=0.5*10^-4//cm
sw=0.5*10^-4//cm
epsiloni=8.85*10^-14
RC=(row*l/tm^2)*epsiloni*2.7*(tm*l/sw)
disp(RC,"RC in sec is= ")
