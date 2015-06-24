clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 1.4
//Caption : Program to find the velocity and Energy 

//Given values

M=2500;//Mass=2500Kg
h1=10;//height1=10m
h2=100;//height2=100m
g=9.8;//Acceleration of gravity(m/s^2)

//Solution
//(a)
PE1=M*h1*g;//(J)
disp('J',PE1,'(a)Potential energy of the elevator in its Initial Position')

//(b)
W=M*g*integrate('1','l',h1,h2);//(J)
disp('J',W,'(b)Work Done in Raising the Elevator')

//(c)
PE2=M*g*h2;//(J)
disp('J',PE2,'(c)Potential energy of the elevator in its Highest Position')

//(d)
KE2=0;
PE3=0;
KE3=PE2;//(J)   //Conservation Of Mechanical Energy
u=approx((2*KE3/M)^(1/2),2);//(m/s)
disp('m/s',u,'(d)Velocity of the Elevator')
disp('J',KE3,'(d)Kinetic Energy of the Elevator')

//(e)
PE_Spring=KE3;//(J)
disp('J',PE_Spring,'(e)Potential energy of compressed spring ')

//(f)
TE=PE1+W;
disp('J',TE,'(f)Total Energy of the System')

//End