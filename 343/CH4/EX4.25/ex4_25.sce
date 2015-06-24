clc
kva=5                //Assigning values to parameters
e2=400
r02=0.85
x02=1.236
i2f=kva*1000/e2
t=acosd(0.8)
pr1=(i2f*r02*cosd(t)+i2f*x02*sind(t))*100/e2
pr2=(i2f*r02*cosd(t)-i2f*x02*sind(t))*100/e2
disp(pr1,"The percentage regulation at full load 0.8 pf lagging is");
disp(pr2,"The percentage regulation at full load 0.8 pf leading is");