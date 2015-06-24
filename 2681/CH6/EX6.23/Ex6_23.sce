//resonant frequency of TE101 and its quality factor
//given
clc
con_d=5.8d+7//mho/m
a=0.05//m
b=0.04//m
c=0.1//m
v=3d+8//m/s
epsilon_r=4//dielectric
uo=4*%pi*10^-7
fr=(v/(2*sqrt(epsilon_r)))*(sqrt((1/a^2)+(1/c^2)))//hertz
del=1/sqrt(%pi*fr*uo*con_d)//ERROR
Q=((a^2+c^2)*a*b*c)/(del*(((a^3+c^3)*2*b)+a*c*(a^2+c^2)))//quality factor
disp(Q,fr*1d-9,'resonant frequency in dominant mode TE101 in Ghz and the quality factor')//GHz 
//ERROR in the calculation of the book as value of del=32.275d-7 in the book.
