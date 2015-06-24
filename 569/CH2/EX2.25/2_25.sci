//calculating the reading of the multimeter and percentage error
clc;
Zl=20000;
Zo=1000;
Eo=6;
El=Eo/(1+Zo/Zl);
disp(El,'Reading of the multimeter (V)=')
PE=((El-Eo)/Eo)*100;
disp(PE,'Percentage error=')