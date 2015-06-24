//Section-6,Example-4,Page no.-P.33
clc;
N_2=6.61
V_2=1000
V_1=180
N_1=(N_2*V_2)/V_1
disp(N_1,'Normality of conc.H_2SO_4(N)')
N_2=6.61           //Normality of dil.H_2SO_4
M_1=N_2/2
disp(M_1,'Molarity of dil.H_2SO_4(M)')
W_H=6.61*49       //Weight of H_2SO_4 actually contained in the solution(gm)
W_CH=180*1.84     //Weight of 180 ml of conc. H_2SO_4(gm)
pr_H=(W_H/W_CH)*100
disp(pr_H,'% of H_2SO_4 by weight in conc. H_2SO_4')
W_H1=49*6.61          //Weight of H_2SO_4 on 1L of dil.solution
y=W_H1/(1000*1.198*0.01)
disp(y,'% of H_2SO_4 by weight in diluted H_2SO_4')
W_H2O=1198-323.85         //Weight of water(gm)
m=M_1/(W_H2O*10^-3)
disp(m,'Molality of diluted solution(m)')
M_H2SO4=W_H1/98
M_Water=W_H2O/18
M_F=M_H2SO4/(M_H2SO4+M_Water)
disp(M_F,'Mole fraction of H_2SO_4 in diluted solution')
