
//To determine the duration of acceleration and others
//Page 363
clc;
clear;

D=1.6;
Vav=40;
Bc=0.16;
B=3.2;
a=2; //Acceleration

T=D*3600/Vav; //Time of travel

V1=poly(0,'V1'); //Variable Value

V2=(V1-Bc*(T-(V1/a)))/(1-(Bc/B)); // From the Speed Time Curve
X=((V1+V2)*T-(V1*V2*((1/B)+(1/a))))-(7200*D); //Polynomial Equation to find V1
V1=roots(X); //Numerical Values for V1
disp(X);
printf('\nThe Roots of the above eqaution are\n');
disp(V1)

V1=V1(2); //Train Considered have speed close to this value
V2=(V1-Bc*(T-(V1/a)))/(1-(Bc/B)); // From the Speed Time Curve

Ta=V1/a; //Acceleration Time
Tc=(V1-V2)/Bc; //Coasting Time
Tb=V2/B; //Braking time
//Distance are calculated according to the area under their respective curves
Da=(Ta*V1/2)/3600; //Distance during acceleration
Dc=(((V1-V2)*Tc/2)+(V2*Tc))/3600; //Distance during coasting
Db=(Tb*V2/2)/3600; //Distance during braking

printf('\n\nThe Time periods and the distance covered for:\n')
printf('Acceleration : %g seconds and %g km\n',Ta,Da)
printf('Coasting : %g seconds and %g km\n',Tc,Dc)
printf('Braking : %g seconds and %g km\n',Tb,Db)
