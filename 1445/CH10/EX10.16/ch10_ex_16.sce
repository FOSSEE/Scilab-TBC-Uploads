//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 16

disp("CHAPTER 10");
disp("EXAMPLE 16");

//VARIABLE INITIALIZATION
ratio1=1.5;                    //ratio of T_est and T_efl
ratio2=2.5;                    //ratio of T_em and T_efl

//SOLUTION
s=1;

//solution (a)
//directly solving the quadratic equation
a=1;
b=-3.333;
c=1;
D=(b)^2-(4*a*c);               //discriminant
sm1=(-b+sqrt(D))/(2*a);
sm2=(-b-sqrt(D))/(2*a);
if(sm1<=0 & sm2<=0) then
disp("The value of the slip at maximum torque is not valid");
else if(sm1>0 & sm1<1) 
disp(sprintf("The slip at maximum torque is %f",sm1));
else if(sm2>0 & sm2<1) 
disp(sprintf("The slip at maximum torque is %f",sm2));
end; 

//solution (b)
//directly solving the quadratic equation
a=1;
b=-1.665;
c=0.111;
D=(b)^2-(4*a*c);          
ans1=(-b+sqrt(D))/(2*a); 
ans2=(-b-sqrt(D))/(2*a);
if(ans1>0 & ans1<1)
disp(sprintf("The full load slip is %f",ans1));
sfl=ans1;
else if(ans2>0 & ans2<1)
disp(sprintf("The full load slip is %f",ans2));
sfl=ans2;
end;

//solution (c)
I=sqrt(ratio1/sfl);
disp(sprintf("The rotor current at the starting in terms of full load current is %f A",I));

//END
