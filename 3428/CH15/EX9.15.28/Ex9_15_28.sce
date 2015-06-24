//Section-9,Example-3,Page no.-E.57
//To calculate the transport number of Cu2+ and (SO4+)2- ions.
clc;
W_Ag=0.1351
E_Ag=107.88
E_Cu=63.6/2
W_Cu=(W_Ag/E_Ag)*E_Cu         //Total weight of copper deposited in voltmeter
Y=0.6350
X=0.6236
L=Y-X                        //Loss in weight of Cu in anodic solution(gm)
t_no1=L/W_Cu
disp(t_no1,'Transport number of Cu2+ ions')
t_no2=1-t_no1
disp(t_no2,'Transport number of (SO4+)2- ions')
