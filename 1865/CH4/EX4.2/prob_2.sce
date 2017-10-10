
//Problem 2
//Calculate the coherent time
clear
clc
printf('The length of the wave train is equal to the coherent length\n')
w=660//wavelength of light (in nm)
l=13.2*(10)^(-6)//coherent length (in m)
c=3*(10)^(8)//speed of light (in m/s)
t=l/c//coherent time (in sec)
printf('coherent time= %.16f sec',t)