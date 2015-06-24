//resonant frequency and quality cycle
//given
clc
a=0.03//m
b=0.01//m
c=0.04//m
l=0.04//m
v=3d+8//speed of wave in m/s in mho/m
uo=4*%pi*10^-7
con_d=5.8d+7//conductivity of copper
fr=(v/2)*(sqrt((1/a^2)+(1/b^2)))//hertz
fr1=(v/2)*(sqrt((1/a^2)+(1/l^2)))//hertz
del=1/sqrt(%pi*fr1*uo*con_d)
Q=((a^2+c^2)*a*b*c)/(del*(((a^3+c^3)*2*b)+a*c*(a^2+c^2)))
fr=round(fr*1d-8)/1d-8///rounding off decimals
Q=round(Q)///rounding off decimals
disp(Q,fr1*1d-9,fr*1d-9,'resonant frequency of dominant mode TM110,dominant mode TE101  in Ghz and the quality factor')//GHz 
