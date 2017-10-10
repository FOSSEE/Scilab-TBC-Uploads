//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 3

clc;
disp("CHAPTER 7");
disp("EXAMPLE 3");
//
//2300/230 V 50 Hz transformer
//VARIABLE INITIALIZATION 
v1=2300;                             //primary voltage in Volts
v2=230;                              //secondary voltage in Volts
f=50;
R1=0.286;
X1=0.73;
R_dash_2=0.319;
X_dash_2=0.73;
Rc=250;
Xphi=1250;
Zl=0.387+0.29*%i;
//
//SOLUTION 
Z_e1=(R1+R_dash_2)+(X1+X_dash_2)*%i;
Z_dash_l=(v1/v2)^2*Zl;
// 
I_dash_1=v1/(Z_dash_l+Z_e1);
//[mag,angle]=rect2pol(real(I_dash_1),imag(I_dash_1));
//disp(sprintf("The  current is %f <%f  A",mag,angle));
//impedance of shunt branch
Zm=Rc*(Xphi*%i)/(Rc+Xphi*%i);
//[mag,angle]=rect2pol(real(Zm),imag(Zm));
//disp(sprintf("The  Zm is %f <%f  A",mag,angle));
I0=v1/Zm;
//[mag,angle]=rect2pol(real(I0),imag(I0));
//disp(sprintf("The  I0 is %f <%f  A",mag,angle));
//
//primary current
I1=I0+I_dash_1;
function [mag,angle]=rect2pol(x,y);
mag=sqrt((x^2)+(y^2));            //z is impedance & the resultant of x and y
angle=atan(y/x)*(180/%pi);      //to convert the angle from radians to degrees
endfunction;
[mag,angle]=rect2pol(real(I1),imag(I1));
theta1=angle;
disp("SOLUTION (i)");
disp(sprintf("The primay current in rectangulr form is %.3f -j%.2f  A",real(I1),-imag(I1)));
disp(sprintf("The primay current in polar form is %.3f <%.2f  A",mag,angle));
//
//input power
Pin=v1*I1; ;                            //=I1.cos(theta1)
//disp(sprintf("The  input power is %.3f kW",Pin/1000));
//output power
V_dash_2=I_dash_1*Z_dash_l; 
[mag,angle]=rect2pol(real(V_dash_2),imag(V_dash_2));
theta2=angle;
//disp(sprintf("The  V_dash_2 is %.2f <%.2f  A",mag,angle));
//
Pout= V_dash_2*I_dash_1;                //I_dash_1.cos(theta1)
//disp(sprintf("The  output power is %.3f kW",real(Pout)/1000));
//Efficiency
disp("SOLUTION (ii)");
disp(sprintf("The  Efficiency is %.2f kW",Pout*100/Pin));// text Book answer is 78.75%
//Losses
Pc=v1*I0;                               //core loss
loss=Pin-Pout;
Pcu=loss-Pc;                            //copper loss
disp(sprintf("The  core loss is %.2f kW",Pc/1000));//text book answer is 0.8 kW
disp(sprintf("The  copper loss is %.2f kW",Pcu/1000));//text book answer is 1..38 kW
//efficiency
//eff=Pout*100/Pin;
//disp(sprintf("The  percent efficiency is %f W",eff));
disp(" "); 
// The answers from V_dash_2 calculation onward do not match with the book on page 7.21 and 7.22
//END
