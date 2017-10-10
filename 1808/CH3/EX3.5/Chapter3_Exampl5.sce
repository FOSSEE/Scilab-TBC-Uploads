clc
clear
//INPUT DATA
Tl=20;//engine temprature in Degree C
Th=500;//engine temprature in Degree C
g=1.4;//gas constant
v13=25;//expansion ratio

//CALCULATIONS
v14=((Th+273)/(Tl+273))^(1/(g-1));//Isentropic volume expansion
v43=v13/v14;//Overall expansion ratio

//OUTPUT
printf('(a)Isentropic volume expansion ratio (4-1)is %3.2f \n (b)Isentropic volume expansion ratio(4-3) is %3.2f',v14,v43)




