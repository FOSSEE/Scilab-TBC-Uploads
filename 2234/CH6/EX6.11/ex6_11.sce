clc;
mo=1/(4*(%pi)*10^-7);  //constant
a=0.01;  //area in m square
v=0.2;  //in volt
f=2*10^6;  //frequency in Hz
vp=v*sqrt(2);  //calculating peak voltage
disp(vp,"Peak voltage in volt = ");  //displaying result
b=vp/a;  //change in B field
disp(b,"Change in B field in Tesla/sec = ");  //displaying result
h=b*mo;  //calculating H field
disp(h,"H field is changing in A/m per sec");  //displaying result
disp("At 2 MHz the H-field peak is 1.79 A/m.");  //displaying result
disp("This is 1.26 A/m rms.");  //displaying result
