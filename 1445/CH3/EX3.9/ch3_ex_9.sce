//CHAPTER 3- THREE-PHASE A.C. CIRCUITS
//Example 9

disp("CHAPTER 3");
disp("EXAMPLE 9");

//VARIABLE INITIALIZATION
v_ab=400;                     //in Volts
v_bc=400;                     //in Volts
v_ac=400;                     //in Volts
z_ab=100;                     //in Ohms
z_bc=100;                     //in Ohms
z_ac=100;                     //in Ohms

//solution (a)

//function to convert from polar to rectangular form
function [x,y]=pol2rect(mag,angle1);
x=mag*cos(angle1);
y=mag*sin(angle1);
endfunction;

I_AB=v_ab/z_ab;
mag1=abs(real(I_AB));
ang1=0;
I_BC=v_bc/z_bc;
ang2=-210*(%pi/180); 
I_AC=v_ac/z_ac;
ang3=210*(%pi/180);
[x1,y1]=pol2rect(I_AB,ang1);
[x2,y2]=pol2rect(I_BC,ang2);
[x3,y3]=pol2rect(I_AC,ang3);
I_A=(x1-x3)+(%i*(y1-y3));
I_B=(x2-x1)+(%i*(y2-y1));
I_C=(x3-x2)+(%i*(y3-y2));
disp(sprintf("(a) The line current I_A in rectangular form is (%f + j%d) A",real(I_A),imag(I_A)));
disp(sprintf("The line current I_B in rectangular form is (%f + j%d) A",real(I_B),imag(I_B)));
disp(sprintf("The line current I_C in rectangular form is (%d - j%d) A",real(I_C),-imag(I_C)));

//solution (b)
//since power is consumed only by 100Ω resistance in the arm AB
r1=100;
p1=(I_AB^2)*r1;
p2=160000;
r2=p2/p1;
disp(sprintf("(b) The star connected balanced resistance is %d Ω",r2));

//END 

