clc;
clear;

t=0:0.01:1;                                               
Freq=2*%pi*10^(5)+3*2*%pi*100*cos(2*%pi*100*(t));//Phase=2*%pi*10^(5)*t+3*sin(2*%pi*100*t);

t1=0.4;// time in ms
Ang_Freq=2*%pi*10^(5)+3*2*%pi*100*cos(2*%pi*100*(t1*10^(-3)));
Freq=Ang_Freq/(2*%pi); 

//change in answer due to calculation error in book
disp(Freq,"Instantaneous Frequency(in Hz) at (t=0.4ms)N =");


Max_pha_Dev=3; //max(3sin(2*%pi*100t))

disp(Max_pha_Dev," Maximum Phase Deviation(in rad) =");
 
Max_fre_Dev=6*%pi*100;//max(6*pi*100*cos(2*pi*100t))



disp(Max_fre_Dev/(2*%pi),"MAximum Frequency Deiation(in Hz)");
