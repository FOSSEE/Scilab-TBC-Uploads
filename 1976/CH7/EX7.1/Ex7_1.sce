
//To determine the Acceleration and Coasting Period
//Page 362
clc;
clear;
D=1.92
Ts=20; //Duration of stops
Vsch=40;
V1=60.8;
//Retardation
B=3.2;
Bc=0.16;

SchTime=D*3600/Vsch; // Schedule time in seconds

T=SchTime-Ts; //Time of Travel

a=poly(0,'a'); // Acceleration Unknown Value

V2=(V1-Bc*(T-(V1/a)))/(1-(Bc/B)); // From the Speed Time Curve

X=((V1+V2)*T-(V1*V2*((1/B)+(1/a))))-(7200*D); //Polynomial Equation to find a

disp(X(2))
printf('\nThe Above Equation is Equated to zero to get a\n\n\n')
a=roots(X(2)); //Roots of the Characteristic Equation
//To Determine the positive roots
Y=abs(a)+a;
if(Y(1)==0)
    a=a(2);
else
    a=a(1);
end

Ta=V1/a; //Duration of acceleration
V2=(V1-Bc*(T-(V1/a)))/(1-(Bc/B)); // From the Speed Time Curve
Tcs=(V1-V2)/Bc; //Coasting Time Period

printf('The Acceleration of the Train is %g Kmphps\n',a)
printf(' The Coasting Period is %g seconds\n',Tcs)
