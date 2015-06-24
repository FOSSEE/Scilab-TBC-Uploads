clc
clear
disp('example 15.2')
b=4.2 //flux density
v=600  //gas velocity
d=0.6  //dimension of plate
k=0.65  //constent
e=b*v*d //open circuit voltage
vg=e/d  //voltage gradient
v=k*e   //voltage across load
vgg=v/d  //voltage gradient due to load voltage
printf("voltage E=%dV \n voltage gradient %dV/m \n voltage across load %.1fV \n voltage gradient due to load voltage %dv",e,vg,v,vgg)

