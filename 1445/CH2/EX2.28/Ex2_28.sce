//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 28 // read it as example 27 in the book on page 2.80

disp("CHAPTER 2");
disp("EXAMPLE 28");
//
//Circuit diagram given with 3 branches
//VARIABLE INITIALIZATION
z1=2+(%i*3);                    //impedance in rectangular form in Ohms
z2=1-(%i*5);                    //impedance in rectangular form in Ohms
z3=4+(%i*2);                    //impedance in rectangular form in Ohms
v=10;                           //in volts
//SOLUTION

//solution (a)
//Total impedance
//Total circuit impedance Z=(Z1||Z2)+Z3
z=z1+(z2*z3)/(z2+z3);
//define function
function [mag,angle]=rect2pol(x,y);
mag=sqrt((x^2)+(y^2));            //z is impedance & the resultant of x and y
angle=atan(y/x)*(180/%pi);      //to convert the angle from radians to degrees
endfunction;
[magZ, angleZ]=rect2pol(real(z),imag(z));
disp("SOLUTION (i)");
disp(sprintf("Total circuit impedance is %3.2f+%3.1fj S", real(z), imag(z)));// in rectangula rform
disp(sprintf("Total circuit impedance is %3.2f %3.1f S", magZ, angleZ)); //in polar form

//solution (b)
//Total supply current I=V/Z
i=v/z;
[mag, angle]=rect2pol(real(i), imag(i));
disp("SOLUTION (b)");
disp(sprintf("Total current is %3.2f <%3.1f Amp",mag,angle));
//solution (c)
//Vbc=I.Zbc where Zbc=(z2*z3)/(z2+z3)
Vbc=i*((z2*z3)/(z2+z3));
[mag1, angle1]=rect2pol(real(Vbc), imag(Vbc));
disp("SOLUTION (c)");
disp(sprintf("The voltage across the || circuit is %3.2f-%3.2fj",real(Vbc), imag(Vbc)));
disp(sprintf("The voltage across the || circuit is %3.2f <%3.1f",mag1, angle1));
disp(sprintf("The voltage Vbc lags circuit by %3.2f Deg",angle-angle1));
//solution (d)
//i2=Vbc/z2, i3=Vbc/z3
i2=Vbc/z2;
i3=Vbc/z3;
[mag2, angle2]=rect2pol(real(i2), imag(i2));
[mag3, angle3]=rect2pol(real(i3), imag(i3));
disp("SOLUTION (d)");
disp(sprintf("The current across fist branch of || circuit is %3.2f <%3.1f",mag2, angle2));
disp(sprintf("The current across second branch of || circuit is %3.2f <%3.1f",mag3, angle3));
//solution (e)
pf=cos(-1*angle*%pi/180);
disp("SOLUTION (e)");
disp(sprintf("The power factor is %.3f",pf));
//solution (iv)
//Apparent power s=VI, True Power, tp I^2R, Reactive Power, rp=I^2X or VISSin(angle)
s=v*mag; //apparent power
tp=(mag^2)*magZ;//true power
rp=v*mag*sin(-1*angle*%pi/180);//reactive power
disp("SOLUTION (f)");
disp(sprintf("The Apparent power is %.2f VA",s));
disp(sprintf("The True power is %.2f W",tp));//text book answer is 16.32 may be due to truncation
disp(sprintf("The Reactive power is %.1f vars",rp));
disp(" "); 
//END
