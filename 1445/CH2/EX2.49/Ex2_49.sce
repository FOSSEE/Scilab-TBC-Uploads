//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 49

disp("CHAPTER 2");
disp("EXAMPLE 49");

//Given
//voltage V=200 <30
//current 20 <60 and 40 <-30

//VARIABLE INITIALIZATION
v=200;                         //in Volts
angle_v=30;                    //in degrees
I1=20;                         //in Amperes
angle_I1=60;                  //in degrees
I2=40;                         //in Amperes
angle_I2=-30;                  //in degrees

//SOLUTION
//function to convert from polar form to rectangular form
function [x,y]=pol2rect(mag,angle);
x=mag*cos(angle*(%pi/180));    //to convert the angle from degrees to radians
y=mag*sin(angle*(%pi/180));
endfunction;
[v_x,v_y]=pol2rect(v,angle_v);
[I1_x,I1_y]=pol2rect(I1,angle_I1);
[I2_x,I2_y]=pol2rect(I2,angle_I2);
s1=v*I1;
angle_s1=-angle_v+angle_I1;
disp(sprintf("The apparent power in 1st branch is %d kVA",s1/1000));
[s1_x,s1_y]=pol2rect(s1,angle_s1);
disp(sprintf("The true power in 1st branch is %.3f kW",s1_x/1000));

disp(" ");

s2=v*I2;
angle_s2=angle_v-angle_I2;
disp(sprintf("The apparent power in 2nd branch is %d kVA",s2/1000));
[s2_x,s2_y]=pol2rect(s2,angle_s2);
disp(sprintf("The true power in 2nd branch is %d kW",s2_x/1000));
I=(I1_x+I2_x)+(%i*(I1_y+I2_y)); //disp(I);

//function to convert from rectangular form to polar form
function [I,angle]=rect2pol(x,y);
I=sqrt((x^2)+(y^2));           
angle=atan(y/x)*(180/%pi);     //to convert the angle from radians to degrees
endfunction;
[I,angle]=rect2pol(real(I),imag(I));
//disp(I);
s=v*I;
angle_s=angle_v-angle;
disp(sprintf("The apparent power in the main circuit is %.3f kVA",s/1000));
[p,q]=pol2rect(s,angle_s);
disp(sprintf("The true power in the main circuit is %.3f kW",p/1000));

//END




 
