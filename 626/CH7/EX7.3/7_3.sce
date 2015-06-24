clear;
clc;
close;
disp("Example 7.3")
Um1=200 // in m/s
Um2=Um1
Cz1=150 //in m/s
Cz2=Cz1
b2=-35 //in degree 
Cm=7 //in cm
Sm=7 //in cm
W1m=((Um1^2)+Cz1^2)^(1/2) 
Wt2m=Cz2*tand(-35)
W2m=((Cz1)^2+(Wt2m)^2)^(1/2)
disp(W1m,"(a)W1m in m/s:")
disp(W2m,"W2m in m/s :")
sigma=Cm/Sm
Wt1m=-1*Um1
Dm=1-(W2m/W1m)+(abs(Wt2m-Wt1m))/(2*sigma*W1m)
disp(Dm,"(b)D-factor Dm :")
Tm=Sm/100*abs(Wt1m-Wt2m)
disp(Tm,"(c)Circulation Tm in m^2/s:")
