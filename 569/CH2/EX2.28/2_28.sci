//calculating the actual value of current, measured value of current and percentage error
clc;

Eo=10-((10*1000)/(1000+1000));
Zo=((1000*1000)/(1000+1000))+500;
Io=Eo/Zo;
disp(Io,'Actual value of current (A)=')
Zl=100;
Il=Eo/(Zo+Zl);
disp(Il,'Measured value of current (A)=')
PE=((Il-Io)/Io)*100;
disp(PE,'Percentage loading error=')
