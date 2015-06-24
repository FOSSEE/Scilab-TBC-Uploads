//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 32

disp("CHAPTER 8");
disp("EXAMPLE 32");

//250 V series motor at 1000 rpm
//VARIABLE INITIALIZATION
v_t=250;                     //in Volts
I=20;                        //in Amperes
N1=1000;                     //in rpm
P=4;                         //number of poles
r_p=0.05;                    //resistance of field coil on each pole in Ohms
r_a=0.2;                     //in Ohms

//SOLUTION

r_se=P*r_p;                  // series field resistance
r_m=r_a+r_se;                //resistance of motor
E_b1=v_t-(I*r_m);            // back emf
//Torque t1 dir prop phi1.Ia
//=> since phi dir prop Ia
//=> torque dir prop Ia^2
T1=I^2;                      // torque

//solution (a)
//10 ohm resistance in parallel with armature
//let I be input currnet then, drop in series field = r_a.I
//Voltage across the terminals = V = Vt-r_a.I
//=> current in 10 ohm resistance (=r) = (Vt-r_a.I)/r            (eq 1)
// now, Armature current Ia
// Ia= I - (Vt-r_a.I)/r                                          (eq 2)
//Torque developed t2 dir prop phi2.Ia
//=> since phi dir prop I
//=> torque dir prop I.Ia
//However, T2=T1, as torque developed in two cases is equal
//=> I.Ia = T1
//substituting value of Ia from eq 2, we get
//I.(I - (Vt-r_a.I)/r) =T1
//=>I. (I.r+r_a.I -Vt)/r = T1
//=> (r+r_a).I^2 -Vt.I =T1.r
//=>  (r+r_a).I^2 -Vt.I - T1.r =0
//solving the quadratic equation directly,
r=10;                        //in Ohms
a=10.2; //(r+r_a). value 1.02 in text book, as it was divided by r=10
b=-250; //Vt ; -25 in text book, as it was divided by r=10
c=-4000; // T1.r; 400 in text book, as it was not multiplied by r=10
D=b^2-(4*a*c);
x1=(-b+sqrt(D))/(2*a);
x2=(-b-sqrt(D))/(2*a);
//to extract the positive root out of the two 
if (x1>0 & x2<0)
I1=x1;
else (x1<0 & x2>0)
I1=x2;
end;
I_a=((10.2*I1)-v_t)/r;      // armature current
E_b2=v_t-(I_a*r_a);         // back emf
N2=((E_b2/E_b1)*I*N1)/I1;
N2=round(N2);               //to round off the value
disp(sprintf("(a) The speed with 10 Ω resistance in parallel with the armature is %d rpm",N2));

//solution (b)
//0.5 ohmic diverter resistance
//resistance in the field winding = 0.5/(0.5+r_a)
// since r_a=0.2,the value becomes 0.5/0.7 = 5/7
//Torque T3 dir prop phi3.Ia
// => dir prop 5/7 . I. I.
//=> dir prop 5/7 I^2
//since T3=T1
//=> 5/7 I^2= T1
//=> 5/7. I^2 - T1=0
//solving the quadratic equation directly,with new values
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
E_b3=v_t-(I2*r_a);          // back emf
N3=((E_b3/E_b1)*I*N1)/(I2*a);
N3=round(N3);               //to round off the value
disp(sprintf("(b) The speed with 0.5 Ω resistance in parallel with series field is %d rpm",N3));

//The answers are slightly different due to the precision of floating point numbers

//END


