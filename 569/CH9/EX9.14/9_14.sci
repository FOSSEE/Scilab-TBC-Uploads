// calculate thickness of diaphram and natural frequency
clc;
P=7*10^6;
R=6.25*10^-3;
v=0.28;
E=200*10^9;
t={[9*P*R^4*(1-v^2)/(16*E)]^0.25}*10^3;
disp(t,'thickness of diaphram(mm)')
ds=7800;
fn=[2.5*t/(%pi*R^2)]*[E/(3*ds*(1-v^2))]^0.5;
disp(fn,'natural frequency(Hz)')