clc
clear
//Input data
m=[3,12]//Masses of the blocks in kg
q=50//Angle made by the string in degrees
a=3//Acceleration of 12kg block in m/s^2

//Calculations
T=m(1)*(9.8+a)//Tension in the string in N
u=(m(2)*(9.8*sind(q)-a)-T)/(m(2)*9.8*cosd(q))//Coefficient of kinetic friction

//Output
printf('Tension in the string is %3.1f N \n The coefficient of kinetic friction between %i kg block and the plane is %3.3f',T,m(2),u)
