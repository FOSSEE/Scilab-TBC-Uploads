//Initilization of variables
F1=2000 //lb
F2=4000 //lb
l1=10 //ft
l2=30 //ft
l3=20 //ft
l4=40 //ft
t=60 //degrees
//Calculations
//Taking moment about point B and A
Ra=(F1*l2+F2*l1)/l4 
Rb=(F2*l2+F1*l1)/l4
//Consider fig 7-4(c)
A=[1 -cosd(t);0 -sind(t)]
B=[0;-2500]
C=inv(A)*B
//Consider figure 7-4(d)
A1=[1 cosd(t);0 -sind(t)]
B1=[-C(2)*cosd(t);-C(2)*sind(t)+F1]
C1=inv(A1)*B1
//Consider figure 7-4(e)
CD=577
CE=C(1)+C1(2)*cosd(t)+CD*cosd(t)
//Consider figure 7-4(f)
DE=Rb/sind(t)
//Result
clc
printf('The reactions are Ra=%flb and Rb=%flb\n',Ra,Rb)
printf('Force in member AB=%flb and AC=%flb\n',C(2),C(1))
printf('Force in member BC=%flb and BD=%flb\n',C1(2),C1(1))
printf('Force in member CD=%flb and CE=%flb\n',CD,CE)
printf('Force in member DE=%flb',DE)
//Decimal Accuracy causes discrepancy in answers
