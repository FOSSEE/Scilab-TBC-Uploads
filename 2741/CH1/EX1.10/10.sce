clc
clear
//Input data
t1=50;//Temperature on platinum scale in degree centigrade
t11=50.25;//Temperature on gas scale in degree centigrade
t2=150;//Temperature on gas scale in degree centigrade

//Calculations
g=(t1-t11)/((t1/100)^2-(t1/100));
x=t2-(g*((t2/100)^2-(t2/100)));//The temperature on the platinum scale corresponding to 150 degrees centigrade on gas scale in degree centigrade

//Output data
printf('The temperature on the platinum scale is %3.2f degree centigrade',x)
