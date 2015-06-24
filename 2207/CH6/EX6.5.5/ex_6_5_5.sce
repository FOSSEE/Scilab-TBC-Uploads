//Example 6.5.5:average load voltage and rms load voltage
clc;
clear;
close;
//given data 
d=[0.1;0.2;0.3;0.4;0.5;0.6;0.7;0.8;0.9;1.0]
for i=1:10
    FF(i)=(1/sqrt(d(i)))*100;//
     RF(i)=(((((FF(i))/100)^2)-1)^(1/2))*100;//
end

disp(FF,"FF different values of form factor in percentage is")
disp(RF,"RF diffent values of ripple factor in percentage is")
plot(d,[FF RF]);
xlabel("DUTY CYCLE D")
ylabel("FF & RF (%)")
xtitle("Variation of FF and RF with duty cycle D")
hl=legend(['FF %';'RF %']);
