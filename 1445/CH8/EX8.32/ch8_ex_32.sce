//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 32

disp("CHAPTER 8");
disp("EXAMPLE 32");

//VARIABLE INITIALIZATION
v_t=250;                     //in Volts
I=20;                        //in Amperes
N1=1000;                     //in rpm
P=4;                         //number of poles
r_p=0.05;                    //resistance of field coil on each pole in Ohms
r_a=0.2;                     //in Ohms

//SOLUTION

r_se=P*r_p;
r_m=r_a+r_se;                //resistance of motor
E_b1=v_t-(I*r_m);
T1=I^2;

//solution (a)
//solving the quadratic equation directly,
r=10;                        //in Ohms
a=1.02;
b=-25;
c=-400;
D=b^2-(4*a*c);
x1=(-b+sqrt(D))/(2*a);
x2=(-b-sqrt(D))/(2*a);
//to extract the positive root out of the two 
if (x1>0 & x2<0)
I1=x1;
else (x1<0 & x2>0)
I1=x2;
end;
I_a=((10.2*I1)-v_t)/r; 
E_b2=v_t-(I_a*r_a);
N2=((E_b2/E_b1)*I*N1)/I1;
N2=round(N2);               //to round off the value
disp(sprintf("(a) The speed with 10 Ω resistance in parallel with the armature is %d rpm",N2));

//solution (b)
//solving the quadratic equation directly,
a=5/7;
b=0;
c=-400;
D=b^2-(4*a*c); 
y1=(-b+sqrt(D))/(2*a);
y2=(-b-sqrt(D))/(2*a);
//to extract the positive root out of the two 
if (y1>0 & y2<0)
I2=y1;
else (y1<0 & y2>0)
I2=y2;
end;
E_b3=v_t-(I2*r_a);
N3=((E_b3/E_b1)*I*N1)/(I2*a);
N3=round(N3);               //to round off the value
disp(sprintf("(b) The speed with 0.5 Ω resistance in parallel with series field is %d rpm",N3));

//The answers are slightly different due to the precision of floating point numbers

//END


