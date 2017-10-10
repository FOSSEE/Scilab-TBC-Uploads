//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 28 // read it as example 27 in the book on page 2.80

disp("CHAPTER 2");
disp("EXAMPLE 28");

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
disp("SOLUTION (i)");
disp(sprintf("Total circuit impedance is %3f %3fj S", real(z), imag(z)));
//Total supply current I=V/Z
//solution (b)
i=v/z;
function [mag,angle]=rect2pol(x,y);
mag=sqrt((x^2)+(y^2));            //z is impedance & the resultant of x and y
angle=atan(y/x)*(180/%pi);      //to convert the angle from radians to degrees
endfunction;
[mag, angle]=rect2pol(real(i), imag(i));
disp("SOLUTION (b)");
disp(sprintf("Total current is %f<%f Amp",mag,angle));
//solution (c)
//Vbc=I.Zbc where Zbc=(z2*z3)/(z2+z3)
Vbc=i*((z2*z3)/(z2+z3));
[mag1, angle1]=rect2pol(real(Vbc), imag(Vbc));
disp("SOLUTION (c)");
disp(sprintf("The voltage across the || circuit is %f<%f",mag1, angle1));
disp(sprintf("The voltage Vbc lags circuit by %f Deg",angle-angle1));
//solution (d)
//i2=Vbc/z2, i3=Vbc/z3
i2=Vbc/z2;
i3=Vbc/z3;
[mag2, angle2]=rect2pol(real(i2), imag(i2));
[mag3, angle3]=rect2pol(real(i3), imag(i3));
disp(sprintf("The current across fist branch of || circuit is %f<%f",mag2, angle2));
disp(sprintf("The current across second branch of || circuit is %f<%f",mag3, angle3));
//solution (e)
pf=cos(-1*angle*%pi/180);
disp("SOLUTION (e)");
disp(sprintf("The power factor is %f",pf));
//solution (iv)
//Apparent power s=VI, True Power, tp I^2R, Reactive Power, rp=I^2X or VISSin(angle)
s=v*mag;
tp=mag*mag*real(z);
rp=v*mag*sin(-1*angle*%pi/180);
disp("SOLUTION (f)");
disp(sprintf("The Apparent power is %f VA, True power is %f W , Reactive power is %f vars",s,tp,rp));
disp(" "); 
//END
