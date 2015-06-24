//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 16

disp("CHAPTER 10");
disp("EXAMPLE 16");

//VARIABLE INITIALIZATION
ratio1=1.5;                    //ratio of starting torque (T_est) and full load torque (T_efl)
ratio2=2.5;                    //ratio of maximum torque (T_em) and T_efl

//SOLUTION

//solution (a) (taking the ratio of T_est and T_em)
s=1;                           //at starting slip is equal to 1

//directly solving the quadratic equation (a,b and c are the coefficients of the quadratic equation)
a=1;
b=-3.333;
c=1;
D=(b)^2-(4*a*c);               //discriminant 
sm1=(-b+sqrt(D))/(2*a);
sm2=(-b-sqrt(D))/(2*a);
if(sm1<=0 & sm2<=0) then
disp("The value of the slip at maximum torque (maximum slip) is not valid");
else if(sm1>0 & sm1<1) 
disp(sprintf("The slip at maximum torque (maximum slip) is %.3f",sm1));   //slip is a unitless quantity
else if(sm2>0 & sm2<1) 
disp(sprintf("The slip at maximum torque (maximum slip) is %.4f",sm2));
end; 

//solution (b) (taking the ratio of T_efl and T_em)
//directly solving the quadratic equation
a=1;
b=-1.665;
c=0.111;
D=(b)^2-(4*a*c);          
ans1=(-b+sqrt(D))/(2*a); 
ans2=(-b-sqrt(D))/(2*a);
if(ans1>0 & ans1<1)
disp(sprintf("The full load slip is %.3f",ans1)); 
sfl=ans1;
else if(ans2>0 & ans2<1)
disp(sprintf("The full load slip is %.3f",ans2));
sfl=ans2;
end;

//solution (c)
I=sqrt(ratio1/sfl);
disp(sprintf("The rotor current at the starting in terms of full load current is %.3f A",I));

//END
