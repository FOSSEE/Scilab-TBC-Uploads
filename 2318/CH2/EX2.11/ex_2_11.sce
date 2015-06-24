//Example 2.11://wattmeters readings
clc;
clear;
close;
pf=0.8;//
td=(sqrt(1-pf^2))/pf;//
sr=300;//kW
df=(sr/sqrt(3))*td;//
w2=(sr+df)/2;//
w1=sr-w2;//
disp(round(w1),"wattmeter (W1) reading in kW is")
disp(round(w2),"wattmeter (W2) reading in kW is")
