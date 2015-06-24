//Initilization of variables
P=25.6 //lb
w=600 //rpm
a=36 //in
b=12 //in
//Calculations
M=P*(((b/2)+a)/12)  //lb-ft
w_new=(2*%pi*w)/60 //rad/s
Hp=(M*w_new)/550 //hp
//Result
clc
printf('The power being transmitted is %fhp',Hp)
