//Section-1,Example-1,Page no.-AC.181
//To calculate percentage results of the given analysis.
clc;
W1_loss=(1.5-1.415)
W_s=1.5
M=(W1_loss/W_s)*100
disp(M,'%Moisture')
W2_loss=(1.415-0.528)
V=(W2_loss/W_s)*100
disp(V,'%Volatile matter')
W3_left=0.254
A=(W3_left/W_s)*100
disp(A,'%Ash')
F_C=100-(M+V+A)
disp(F_C,'%Fixed carbon')
