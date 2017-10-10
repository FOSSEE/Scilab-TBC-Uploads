clc
clear
//INPUT DATA
//GASES IN THE ORDER CO2,CO,O2,N2
p=[10,8,1.5,80.5];//percentage of gas
m=[44,32,28,28];//molecular weight of gas

//CALCULATIONS
x1=m(1)*(p(1)/100);//individual moles per 100 kg of CO2 mixture
x2=m(2)*(p(2)/100);//individual moles per 100 kg of CO mixture
x3=m(3)*(p(3)/100);//individual moles per 100 kg of O2 mixture
x4=m(4)*(p(4)/100);//individual moles per 100 kg of N2 mixture
x=x1+x2+x3+x4;//Total moles per 100 kg mixture
v1=(x1/x)*100;//percentage of gases on volume basis
v2=(x2/x);//percentage of gases on volume basis



//OUTPUT
printf('(a)percentage of each gas by mass is %3.2f \n (b)mass of oxygen per kg of dry flue gases is %3.3f kg',v1,v2)




