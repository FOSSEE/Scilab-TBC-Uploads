//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 52

disp("CHAPTER 2");
disp("EXAMPLE 52");

//VARIABLE INITIALIZATION
r1=7;                        //in Ohms
L1=0.015;                    //in Henry
r2=12;                       //in Ohms
c2=180*(10^(-6));            //in Farad
r3=5;                        //in Ohms
L3=0.01;                     //in Henry
v=230;                       //in Volts
f=50;                        //in Hertz

//SOLUTION

//solition (a)
xl1=2*%pi*f*L1;
xc2=1/(2*%pi*f*c2);
xl3=2*%pi*f*L3;
Z1=r1+xl1*%i;                   //complex representations
Z2=r2-xc2*%i;
Z3=r3+xl3*%i;
//function to convert from rectangular form to polar form
function [z,angle]=rect2pol(r,x);
z=sqrt((r^2)+(x^2));           
angle=atan(x/r)*(180/%pi);   //to convert the angle from radians to degrees
endfunction;
[z1,angle1]=rect2pol(r1,xl1);
[z2,angle2]=rect2pol(r2,xc2);
[z3,angle3]=rect2pol(r3,xl3);
//to obtain rectangular form of (Z1+Z2)
req1=r1+r2;
xeq1=xl1-xc2;
//to obtain polar form of (Z1+Z2)
[zeq1,angle_eq1]=rect2pol(req1,-xeq1);
zp=(z1*z2)/(zeq1);
angle_p=(angle1-angle2)+angle_eq1;
//function to convert from polar form to rectangular form
function [r,x]=pol2rect(z,angle);
r=z*cos(angle*(%pi/180));    //to convert the angle from degrees to radians
x=z*sin(angle*(%pi/180));
endfunction;
[rp,xp]=pol2rect(zp,angle_p);
[req,xeq]=pol2rect(z3,angle3);
r_tot=req+rp;
x_tot=xeq+xp;
[z_tot,angle_tot]=rect2pol(r_tot,x_tot);
Z=r_tot+x_tot*%i;               //complex representation
disp(sprintf("(a) The total impedance is %f Ω, %f degrees",z_tot,angle_tot));

//solution (b)
I=v/Z;                          //complex division
angle_I=-angle_tot;
[I_x,I_y]=pol2rect(I,angle_I);
disp(sprintf("(b) The total currrent is (%f-j%f) A",real(I),imag(I))); 

//solution (c)
//Voltage drop across Z3
Vab=I*Z3;
disp(sprintf("    The Voltage between AB is (%f-j%f) A",real(Vab),imag(Vab)));
//since we know that V=Vab+Vbc
Vbc=v-Vab;
disp(sprintf("    The Voltage between BC is (%f-j%f) A",real(Vbc),imag(Vbc)));
I1=Vbc/Z1;                      //Branch 1 current
I2=Vbc/Z2;                      //branch 2 current
//I3=I, main branch current
[mag1,angle1]=rect2pol(real(I1),imag(I1));
[mag2,angle2]=rect2pol(real(I2),imag(I2));
disp(sprintf("(c) Current in branch 1 is %f A, %f degrees",mag1,angle1));
disp(sprintf("    The currrent in branch 1 is (%f-j%f) A",real(I1),imag(I1))); 
disp(sprintf("    The current in branch 2 is %f A, %f degrees",mag2,angle2));
disp(sprintf("    The currrent in branch 2 is (%f-j%f) A",real(I2),imag(I2))); 
//END

