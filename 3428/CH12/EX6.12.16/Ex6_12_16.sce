//Section-6,Example-1,Page no.-P.53
//To find the molality of the sucrose solution.
clc;
R=0.082
M=342
V=1
T=298
pi=4.82                //Osmotic pressure(atm)
w=(pi*M*V)/(R*T)         //weight of sucrose(gm)
w_W=(1015-w)*10^-3        //Weight of water in 1015 gm of sucrose solution(kg)
n_S=w/M                   //moles of sucrose
m_S=n_S/w_W
disp(m_S,'Molality of the sucrose solution(m)')
