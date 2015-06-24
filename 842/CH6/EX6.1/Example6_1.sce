//clear//
//Example6.1:Phase Response and Group Delay
clear;
clc;
close;
f1 = 50;
f2 = 150;
f3 = 300;
w1 = 315;
tuo1 = 0.066;
w2 = 943;
tuo2 = 0.033;
w3 = 1888;
tuo3 = 0.058;
f = 0:0.1:400;
W = 2*%pi*f;
for i =1:length(f)
 num1(i) = (1+(sqrt(-1)*f(i)/f1)^2-2*sqrt(-1)*tuo1*(f(i)/f1));
 den1(i) = (1+(sqrt(-1)*f(i)/f1)^2+2*sqrt(-1)*tuo1*(f(i)/f1));
 H1W(i) = num1(i)/den1(i);
 num2(i) = (1+(sqrt(-1)*f(i)/f2)^2-2*sqrt(-1)*tuo2*(f(i)/f2));
 den2(i) = (1+(sqrt(-1)*f(i)/f2)^2+2*sqrt(-1)*tuo2*(f(i)/f2));
 H2W(i) = num2(i)/den2(i);
 num3(i) = (1+(sqrt(-1)*f(i)/f3)^2-2*sqrt(-1)*tuo3*(f(i)/f3));
 den3(i) = (1+(sqrt(-1)*f(i)/f3)^2+2*sqrt(-1)*tuo3*(f(i)/f3));
 H3W(i) = num3(i)/den3(i);
 H_W(i) = H1W(i)*H2W(i);
 HW(i) = H_W(i)*H3W(i);
  phase1(i) = -2*atan((2*tuo1*(f(i)/f1))/(1.001-(f(i)/f1)^2));
  phase2(i) = -2*atan((2*tuo2*(f(i)/f2))/(1.001-(f(i)/f2)^2));
  phase3(i) = -2*atan((2*tuo3*(f(i)/f3))/(1.001-(f(i)/f3)^2));
  phase_total(i) = phase1(i)+phase2(i)+phase3(i);
 if(f(i)<=50)
    W_phase1(i) = -2*atan((2*tuo1*(f(i)/f1))/(1.001-(f(i)/f1)^2));
    W_phase2(i) = -2*atan((2*tuo2*(f(i)/f2))/(1.001-(f(i)/f2)^2));
    W_phase3(i) = -2*atan((2*tuo3*(f(i)/f3))/(1.001-(f(i)/f3)^2));
    group_delay(i) = -phase_total(i)*0.1/%pi;  //delta_f= 0.1
 elseif(f(i)>=50 & f(i)<=150)
    W_phase1(i)= -2*%pi-2*atan((2*tuo1*(f(i)/f1))/(1.001-(f(i)/f1)^2));
    W_phase2(i)= -2*atan((2*tuo2*(f(i)/f2))/(1.001-(f(i)/f2)^2));
    W_phase3(i)= -2*atan((2*tuo3*(f(i)/f3))/(1.001-(f(i)/f3)^2));
    group_delay(i) = -phase_total(i)*0.1/(2*%pi);
 elseif(f(i)>=150 & f(i)<=300)
    W_phase1(i)= -2*atan((2*tuo1*(f(i)/f1))/(1.001-(f(i)/f1)^2));
    W_phase2(i)= -4*%pi-2*atan((2*tuo2*(f(i)/f2))/(1.001-(f(i)/f2)^2));
    W_phase3(i)= -2*atan((2*tuo3*(f(i)/f3))/(1.001-(f(i)/f3)^2));
    group_delay(i) = -phase_total(i)*0.1/(4*%pi);
 elseif(f(i)>300 & f(i)<=400)
    W_phase1(i)= -2*atan((2*tuo1*(f(i)/f1))/(1.001-(f(i)/f1)^2));
    W_phase2(i)= -2*atan((2*tuo2*(f(i)/f2))/(1.001-(f(i)/f2)^2));
    W_phase3(i)= -6*%pi-2*atan((2*tuo3*(f(i)/f3))/(1.001-(f(i)/f3)^2));
    group_delay(i) = -phase_total(i)*0.1/(4*%pi);
 end
 if(f(i)==300.1)
   W_phase_total(i) = 2*%pi+W_phase1(i)+W_phase2(i)+W_phase3(i);
 else
   W_phase_total(i) = W_phase1(i)+W_phase2(i)+W_phase3(i);
 end
end
figure
plot2d(f,phase_total,2)
xtitle('Principal phase','Frequency(Hz)','Phase(rad)');
figure
plot2d(f,W_phase_total,2)
xtitle('unwrapped phase','Frequency(Hz)','Phase(rad)');
figure
plot2d(f,abs(group_delay),2)
xtitle('group delay','Frequency(Hz)','Group Delay(sec)');
