clc
clear
//INPUT DATA
//GASES IN THE ORDER CO2,CO,O2,N2
p=[16.1,0.9,7.7,75.3];//percentage of gas
m=[44,28,32,28];//molecular weight of gas

//CALCULATIONS
x1=p(1)/m(1);//individual moles per 100 kg of CO2 mixture
x2=p(2)/m(2);//individual moles per 100 kg of CO mixture
x3=p(3)/m(3);//individual moles per 100 kg of O2 mixture
x4=p(4)/m(4);//individual moles per 100 kg of N2 mixture
x=x1+x2+x3+x4;//Total moles per 100 kg mixture
v1=(x1/x)*100;//percentage of gases on volume basis
v2=(x2/x)*100;//percentage of gases on volume basis
v3=(x3/x)*100;//percentage of gases on volume basis
v4=(x4/x)*100;//percentage of gases on volume basis
v=v1+v2+v3+v4;//total percentage of gases on volume basis

//OUTPUT
printf('(i)percentage of gases on volume basis is %3.3f ',v)


