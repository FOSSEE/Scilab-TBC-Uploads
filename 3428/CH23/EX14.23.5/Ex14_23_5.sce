//Section-14,Example-3,Page no.-PC.76
//To calculate moles of ester.
clc;
//CH_3COOH+C_2H_5OH=CH_3COOC_2H_5+H_2O
//K_c=[CH_3COOC_2H_5]*[H_2O]/[CH_3COOH]*[C_2H_5OH]
K_c=4
//C_CH_3COOC_2H_5=x/V
//C_H_2O=x/V
//C_CH_3COOH=1-(x/V)
//C_C_2H_5OH=0.5-(x/V)
x_1=(6+sqrt(12))/(2*3)
x_2=(6-sqrt(12))/(2*3)
//x_2 is accepted since it is less than 1.
disp(x_2,'No. of moles of ester')
