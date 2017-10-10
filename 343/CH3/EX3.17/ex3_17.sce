clc
w1=3000        //Assigning values to parameters
w2=5000
vl=400
t=atan(sqrt(3)*(w2-w1)/(w1+w2))
pf=cos(t)
p=w1+w2
il=p/(sqrt(3)*vl*cos(t))
disp("Watts",p,"Total Power supplied is")
disp(pf,"Power factor is")
disp("Amperes",il,"The line current is")