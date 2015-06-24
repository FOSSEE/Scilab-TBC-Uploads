//Example 2.8
//To solve the triangle when 2 sides and opposite angle is given
clc,clear

a=18 //side oposite to vertex A
A=25 //angle at vertex A
b=30 //side opposite to vertex B

//using law of cosines solving for c
c_polynomial=[1 -54.38 576]
root_c=roots(c_polynomial)

//case 1
c=root_c(1)
cos_B = (c^2+a^2-b^2)/(2*c*a) //from law of cosines
B= (180/%pi)*acos (cos_B)
C=180-(A+B)
printf('1st possible answer set\nAngle B=%.1f degree\nAngle C=%.1f degree\nlength of c=%.0f units\n\n',B,C,c)

//case 2
c=root_c(2)
cos_B = (c^2+a^2-b^2)/(2*c*a) //from law of cosines
B=(180/%pi)*acos(cos_B)
C=180-(A+B)
printf('2nd possible answer set(which is not solved in book)\nAngle B=%.1f degree\nAngle C=%.1f degree\nlength of c=%.0f units\n',B,C,c)
