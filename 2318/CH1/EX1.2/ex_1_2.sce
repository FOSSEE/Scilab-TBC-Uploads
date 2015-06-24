//Example 1.2://APPRABET RESISTANCE AND PERCENTAGE GROSS ERROR
clc;
clear;
close;
disp("when current reading is 5mA")
vr=100;//voltmeter reading
ir=5;//mA
rt=vr/(ir);//in kilo ohms
disp(rt,"apparent resistance in kilo ohms is")
vm=150;//range of voltmeter
s=1;//kilo ohms per volts sensivity
rv=s*vm;//kilo ohms
rx=((rt*rv)/(rv-rt));//kilo ohms
ge=((rx-rt)/rx)*100;//percentage gross error
disp(ge,"percentage gross error is")
disp("when current reading is 50mA")
vr=100;//voltmeter reading
ir1=50;//mA
rt1=vr/(ir1);//in kilo ohms
disp(rt1,"apparent resistance in kilo ohms is")
vm=150;//range of voltmeter
s=1;//kilo ohms per volts sensivity
rv=s*vm;//kilo ohms
rx1=((rt1*rv)/(rv-rt1));//kilo ohms
ge1=((rx1-rt1)/rx1)*100;//percentage gross error
disp(ge1,"percentage gross error is")

