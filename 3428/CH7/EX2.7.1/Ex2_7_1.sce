//Section-2,Example-1,Page no.-CS.52
//To find the throwing power of the plating bath solution in a Haring-Blum cell.
clc;
x_1=6.6
x_2=4
w_1=52
w_2=55
A=x_1/x_2
B=w_2/w_1
P_th=((100*(A-B))/(A+B-2))
disp (P_th,'Percentage throwing power')
