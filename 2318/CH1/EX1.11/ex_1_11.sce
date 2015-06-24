//Example 1.11://MAGNITUDE AND LIMITING ERROR
clc;
clear;
close;
r1=50;//ohms
er1=0.5;//percentage error
r2=100;//ohms
er2=0.5;//percentage error
r3=75.5;//ohms
er3=0.5;//percentage error
x=((r2/r1)*r3);//ohms
eps=er1+er2;//
erpsq=eps-er3;//when error in both (PS) and (Q) is positive
erpsq1=eps+er3;//when error in (PS) is positive and (Q) is negetive
oer1=(erpsq/100)*x;//ohms
oer2=(erpsq1/100)*x;//ohms
disp(x,"magintude in ohm is")
disp(erpsq,"percentage error when error in both (PS) and (Q) is positive (%)")
disp(oer1,"error in ohms when error in both (PS) and (Q) is positive")
disp(erpsq1,"percentage error when error in (PS) is positive and (Q) is negetive (%) ")
disp(oer2,"error in ohms when error in (PS) is positive and (Q) is negetive")
