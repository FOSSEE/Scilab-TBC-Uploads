clc
disp("Problem 10.5")
printf("\n")

printf("Given")
disp("Voltage is 100(45 deg)")
disp("Current is 5(15 deg)")
//For V
Ro1=100
Theta1=45
//For I
Ro2=5
Theta2=15
//We need to find V/I=Z

Zmag=(Ro1/Ro2) 
Zph=Theta1-Theta2
x=Zmag*cos((Zph*%pi)/180);
y=Zmag*sin((Zph*%pi)/180);
z=complex(x,y)
//Let Y=1/Z
Ymag=(Ro2/Ro1) 
Yph=Theta2-Theta1
x1=Ymag*cos((Yph*%pi)/180);
y1=Ymag*sin((Yph*%pi)/180);
z1=complex(x1,y1)

printf("R=%3.2fohm XL=%3.2fH \nG=%0.3fS BL=%0.3fS",x,y,x1,abs(y1));