//Caption:Calculate the regulation of transformer
//Exam:3.23
clc;
clear;
close;
//(I_2*R_a2/E_2)*100=1
Rs_d=1;//Percentage resistive drop
//(I_2*X_a2/E_2)*100=5
Re_d=5;//Percentage reactive drop
//power factor=cosd(q1)=0.8 (lagging)
q1=acosd(0.8);
//Voltage regulation= ((I_2*R_a2*cosd(q1)+I_2*X_a2*sind(q1))/100)*100
//V_r=(I_2*R_a2/E_2)*100*cosd(q1)+(I_2*X_a2/E_2)*100*sind(q1)
V_r1=Rs_d*cosd(q1)+Re_d*sind(q1);//Voltage regulation when power factor is 0.8 lagging
disp(V_r1,'Voltage regulation when power factor is 0.8 lagging(in %)=');
q2=-acosd(0.8);
//V_r2=(I_2*R_a2/E_2)*100*cosd(q2)+(I_2*X_a2/E_2)*100*sind(q2);//Voltage regulation when power factor is 0.8 leading
V_r2=Rs_d*cosd(q2)+Re_d*sind(q2);//Voltage regulation when power factor is 0.8 leading
disp(V_r2,'Voltage regulation when power factor is 0.8 leading(in %)')