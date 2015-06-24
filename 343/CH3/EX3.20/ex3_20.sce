clc
vl=220        //Assigning values to parameters
il=38
n=0.88
p=11200
ip=p/n
t=acosd(ip/(sqrt(3)*vl*il))
pf=cosd(t)
w2=vl*il*cosd(30-t)
w1=vl*il*cosd(30+t)
disp("Watts",w2,"The wattmeter reading is")
disp("Watts",w1,"The wattmeter reading is")
disp(pf,"Power factor is")