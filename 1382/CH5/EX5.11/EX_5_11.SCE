/// Example 5.10:low frequecy response
clc;
clear;
close;
Beta=100;//
Rs=1;//series resistance in killo ohms
R1=40;// resistance in killo ohms
R2=10;// resistance in killo ohms
hie=1.1;//in killo ohms
x=(R1*R2)/(R1+R2);//
Y=(x*hie)/(x+hie);//
Rin= Y+Rs;//input resistance in killo ohms
C1=10;//capacitance in micro farad
fc=(1/(2*%pi*Rin*10^3*C1*10^-6));//CUT OFF FREQUENCY OF INPUT RC NETWORK
Ce=20;//emitter capacitance in micro farad
hic=1100;//in ohms
Rth=(x*Rs)/(x+Rs)*10^3;//
Rx= (Rth+hic)/(Beta);//
Rl=2;//resistance in killo ohms
R= (Rx*Rl*10^3)/(Rx+Rl*10^3);//in ohms
fc1=(1/(2*%pi*R*Ce*10^-6));//CUT OFF FREQUENCY OF bypass RC NETWORK
Rl=1.8;//load resistance in killo ohms
Rc=4;//collector resistance in killo ohms
C2=1;//capacitance in micro farad
fc2=(1/(2*%pi*(Rl+Rc)*10^3*C2*10^-6));//CUT OFF FREQUENCY OF outPUT RC NETWORK
disp(fc,"CUT OFF FREQUENCY OF INPUT RC NETWORK in hertz")
disp(fc1,"CUT OFF FREQUENCY OF BYPASS RC NETWORK in hertz")
disp(fc2,"CUT OFF FREQUENCY OF OUTPUT RC NETWORK in hertz")
