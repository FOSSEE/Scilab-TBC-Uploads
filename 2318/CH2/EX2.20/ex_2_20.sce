//Example 2.20://error and limit of error
clc;
clear;
close;
format('v',5)
mc=1200;//meter constant in rev/kWh
n=40;//revolutions
err=n/mc;//energy recorded in kWh
tp=99.8;//seconds
v=240;//volts
i=5;//amperes
ae=((v*i*tp*10^-3)/3600);//actual energy in kWh
e=((err-ae)/ae)*100;//error
disp(e,"error (fast) in recording (%)")
n=500;//divisions
rn=0.1;//dvision reading accuracy
per=((rn/n)*100);//possible error
ie=0.05;//inherent error
per1=(((rn/10)/tp)*100);//possible error
her=((ie/tp)*100);//human error
tpr=per+per1+her+ie;//total possible error
li1=e-tpr;//
li2=e+tpr;//
disp("limit of error in the meter is "+string(li1)+"% or "+string(li2)+"% ")
