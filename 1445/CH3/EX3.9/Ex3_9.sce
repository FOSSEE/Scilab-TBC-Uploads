//CHAPTER 3- THREE-PHASE A.C. CIRCUITS
//Example 9

clc;
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
function [x,y]=pol2rect(mag,angle);
x=mag*cos(angle);
y=mag*sin(angle);
endfunction;

I_AB=v_ab/z_ab;
mag1=abs(real(I_AB));
ang1=0;			       //I_AB is represented as mag1∠ang1
I_BC=v_bc/z_bc;
ang2=-210*(%pi/180);           //I_BC is represented as mag1∠ang2
I_AC=v_ac/z_ac;
ang3=210*(%pi/180);            //I_AB is represented as mag1∠ang3
[x1,y1]=pol2rect(I_AB,ang1);
[x2,y2]=pol2rect(I_BC,ang2);
[x3,y3]=pol2rect(I_AC,ang3);
//let us consider values X1, Y1, X2, Y2, X3 and Y3 for the ease of calculation (these are not mentioned in the book)
X1=x1-x3;
Y1=y1-y3;
X2=x2-x1;
Y2=y2-y1;
X3=x3-x2;
Y3=y3-y2; 
I_A=X1+(%i*Y1);
I_B=X2+(%i*Y2);
I_C=X3+(%i*Y3);
                       
//function to convert from rectangular to polar form
function [z,angle]=rect2pol(x,y);
z=sqrt((x^2)+(y^2));              //z is impedance & the resultant of x and y
if(x==0 & y>0) then angle=90;     //in case atan=∞ 
elseif(x==0 & y<0) then angle=-90 //in case atan=-∞
else
angle=atan(y/x)*(180/%pi);        //to convert the angle from radians to degrees
end;
endfunction;

[mag4,ang4]=rect2pol(X1,Y1);
[mag5,ang5]=rect2pol(X2,Y2);
[mag6,ang6]=rect2pol(X3,Y3);
disp(sprintf("(a) The line current I_A is %f∠%f A",mag4,ang4));
disp(sprintf("The line current I_B is %f∠%f A",mag5,(180+ang5)));
disp(sprintf("The line current I_C is %f∠%f A",mag6,ang6));

//solution (b)
//since power is consumed only by 100Ω resistance in the arm AB
r1=100;
p1=(I_AB^2)*r1;
p2=160000;
r2=p2/p1;
disp(sprintf("(b) The star connected balanced resistance is %d Ω",r2));

//END 

