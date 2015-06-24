//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 8

disp("CHAPTER 7");
disp("EXAMPLE 8");

//23 kVA 2300/230 V 60 Hz step down transformer

//VARIABLE INITIALIZATION
va=23000;                       //apparent power
v1=2300;                        //primary voltage in Volts
v2=230;                         //secondary voltage in Volts
r1=4;                           //primary resistance in Ohms
r2=0.04;                        //secondary resistance in Ohms
X1=12;                          //leakage reactance primary in Ohms
X2=0.12;                        //leake reactance in secondary in Ohms
pf=0.866;                       //power factor(leading)

//SOLUTION
//assume voltage across load be 230 V
//V'1=I2.(Re2+jXe2)+V2
//Re2=R'1+R2
//R'1=R1.(N2/N1)^2
//Xe2=X'1+X2
//X'1=X1.(N2/N1)^2
//Ze2=Re2+j.Xe2
r1_dash=r1*((v2/v1)^2);
r_e2=r1_dash+r2;
X1_dash=X1*((v2/v1)^2);
X_e2=X1_dash+X2;
//
//disp(sprintf("The value of Re2 %f and Xe2 %f",r_e2,X_e2));
I2=0.75*(va/v2);                //since transformer operates at 75% of its rated load
//
function [x,y]=pol2rect(mag,angle);
x=mag*cos(angle*(%pi/180));         //to convert the angle from degrees to radians
y=mag*sin(angle*(%pi/180));
endfunction;
[x,y]=pol2rect(I2,-30);
I_dash_2=x+y*%i;
//disp(sprintf("The value %f %f",real(I_dash_2),imag(I_dash_2)));
//
Z_e2=r_e2+X_e2*%i;              //in rect coordinates
//disp(sprintf("The value %f %f",real(Z_e2),imag(Z_e2)));
//
V_dash_1=v2+I_dash_2*Z_e2;
//disp(sprintf("The value %f %f",real(V_dash_1),imag(V_dash_1)));
//
function [mag,angle]=rect2pol(x,y);
mag=sqrt((x^2)+(y^2));            //z is impedance & the resultant of x and y
angle=atan(y/x)*(180/%pi);      //to convert the angle from radians to degrees
endfunction;
//
[magV1,angleV1]=rect2pol(real(V_dash_1),imag(V_dash_1));
//disp(sprintf("The value %f <%f",magV1,angleV1));
//
//Pin=V'1.I2.cos theta1
//Pout=V2.I2.cos theta2
Pin=magV1*I2*cos((30+angleV1)*%pi/180);
Pout=v2*I2*cos(30*%pi/180);
eff=Pout*100/Pin;
//
disp(sprintf("The efficiency of the transformer is %.2f",eff));
disp(" "); 
// 
//END
