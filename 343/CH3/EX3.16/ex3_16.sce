clc
w1=500       //Assigning values to parameters
w2=2500
p=w1+w2
t=atan(sqrt(3)*(w2-w1)/(w1+w2))
pf=cos(t)
disp("Watts",p,"Total Power supplied is")
disp(pf,"Power factor is")
w2=2500
w1=-500
p=w1+w2
t=atan(sqrt(3)*(w2-w1)/(w1+w2))
pf=cos(t)
disp("Watts",p,"Total Power supplied after reversing the connections to the current coil is")
disp(pf,"Power factor after reversing the connections to the current coil is")