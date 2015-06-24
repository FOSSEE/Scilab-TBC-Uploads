//Example 2.2
//To solve the triangle when 2 sides and one opposite angle is given
clc,clear

a=18 //side oposite to vertex A
A=25 //angle at vertex A
b=30 //side opposite to vertex B

sin_B=(b/a)*sind(A) //law of sines

//case 1
B=asind(sin_B)   //law of sines
C=180-(A+B)
c=a*sind(C)/sind(A) //law of sines
printf('1st possible solution set\nAngle at B =%.1f degree\nAngle at C=%.1f degree\nlength of side c=%.0f units\n',B,C,c)

//case 2
B=180 - asind(sin_B)  //law of sines
C=180-(A+B)
c=a*sind(C)/sind(A)  //law of sines
printf('\n\n2nd possible solution set\nAngle at B =%.1f degree\nAngle at C=%.1f degree\nlength of side c=%.1f units\n',B,C,c)
