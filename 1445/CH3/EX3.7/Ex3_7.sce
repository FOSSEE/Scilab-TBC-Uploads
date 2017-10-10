//CHAPTER 3- THREE-PHASE A.C. CIRCUITS
//Example 7

clc;
disp("CHAPTER 3");
disp("EXAMPLE 7");

//VARIABLE INITIALIZATION
v_ph=200;                            //phase voltage in Volts
r1=5;                                //in Ohms
r2=8;                                //in Ohms
r3=10;                               //in Ohms

//SOLUTION
I1=v_ph/r1;
I2=v_ph/r2;
I3=v_ph/r3;
disp(sprintf("The current in the three phases are %d A, %d A and %d A",I1,I2,I3));

I_x=0+I2*(sqrt(3)/2)-I3*(sqrt(3)/2); //x-component of the three currents =>I_x = I1*cos(90) + I2*cos(30) + I3*cos(30)
I_y=I1-(I2*0.5)-(I3*0.5);            //y-component of the three currents =>I_y = I1*sin(90) + I2*sin(30) + I3*sin(30)
I=sqrt((I_x^2)+(I_y^2));
disp(sprintf("The neutral current is %f A",I));

p1=v_ph*I1;                          //power consumed in 1st phase
p2=v_ph*I2;                          //power consumed in 2nd phase
p3=v_ph*I3;                          //power consumed in 3rd phase
disp(sprintf("The power consumed in the three phases are %d W, %d W and %d W",p1,p2,p3));

p=p1+p2+p3; 
disp(sprintf("The total power is %d W",p));

//END

