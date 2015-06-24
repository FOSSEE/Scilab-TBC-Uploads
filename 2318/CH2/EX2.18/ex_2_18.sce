//Example 2.18://time and error
clc;
clear;
close;
nd=500;//dvisions
cr=0.1;//dvisions can read
re=(cr/nd)*100;//reading error
ie=0.05;//inherent error
te=re+ie;//total error
tea=0.1;//total error allowable
per=tea-te;//permissible error
cr1=0.01;//seconds
ersw=cr1*100;//error in reading stop watch
cr2=0.1;//seconds
erss=cr2*100;//error in stopping and starting
ter=ersw+erss;//total error
t=per/ter;//seconds
disp(round(1/t),"time duration in seconds is")
nd1=500/10;//
er1=(cr/nd1)*100;//new reading error
ie1=((ie*nd)/nd1);//new inherent error
ter1=er1+ie1;//
la=ter1+per;//
disp(la,"limits of accuracy (%) is")
