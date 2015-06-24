clc
clear
//Input data
m=0.05//Mass of the stone in kg
r=0.4//Radius of the string in m

//Calculations
vh=sqrt(9.8*r)//Minimum speed when the stone is at the top of the circle in m/s
vl=sqrt((2/m)*(((1/2)*m*vh^2)+(m*9.8*2*r)))//Minimum speed when the stone is at the bottom of the circle in m/s

//Output
printf('Minimum speed when the stone is at the top of the circle is %3.2f m/s \n Minimum speed when the stone is at the bottom of the circle is %3.2f m/s',vh,vl)
