//Section-10,Example-2,Page no.-CT.29
//To find the largest mass which can be lifted through a height of 10 meters in the given expansion..
clc;
P_2=1
P_1=5
R=8.314
T=298
n=1
W=-(n*R*T)*log(P_1/P_2)
disp(W,'Maximum work done in(J)')
m_bar=-W/98.1
disp(m_bar,'Required mass(kg)')
