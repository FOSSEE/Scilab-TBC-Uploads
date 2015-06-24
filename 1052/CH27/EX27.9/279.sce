clc;
//Example 27.9
//page no 418
printf("Example 27.9 page no 418\n\n");
//a filter press operates at a constant pressure
P=50//pressure,psig
q=10//flow rate,ft^3/min
//applying eq.27.12
//q = P/(B*V_s + C)
//in this case,V_s=0
C=P/q//constant
//for constant pressure applying equation 27.13
//t = B*V_s^2/(2P) + C*V_s/P
t=60//time ,min
V_s=100//volume,ft^3
B= 2*P*t/(V_s^2) - 2*C/V_s//constant
//during the washing cycle t_w = V_w/q_w
//B and C remain same
V_w=15//volume of water for washing per hr
t_w= V_w*(B*V_s + C)/P//time in washing
printf("\n washing time t_w=%f min",t_w);
t_d=30//time for dumping and cleanig
t_c=(t + t_w +t_d)/60//collecting time,in hr
q_c =V_s/t_c//flow rate for 100 ft^3
printf("\n flow rate q_c=%f gal/hr ",q_c); 
