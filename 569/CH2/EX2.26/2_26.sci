//calculating the loading error
clc;
Zl=1000;
Zo=200*200/400;
Eo=100*200/400;
El=Eo/(1+Zo/Zl);
disp(El,'Reading of the multimeter (V)=')
PE=((El-Eo)/Eo)*100;
disp(PE,'Percentage loading error=')
Ac=100+PE;
disp(Ac,'Accuracy=')