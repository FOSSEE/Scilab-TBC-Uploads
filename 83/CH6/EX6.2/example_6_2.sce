//Chapter 6
//Example 6.2
//page 195
//To Ybus of sample system
clear;clc;

y10=1;y20=1;y30=1;y40=1;
y34=2-%i*6;y23=0.666-%i*2;
y12=2-%i*6;y24=1-%i*3;
y13=1-%i*3;

//to form Ybus matrix
Y11=y13;Y12=0;Y13=-y13;Y14=0;
Y21=0;Y22=y23+y24;Y23=-y23;Y24=-y24;
Y31=-y13;Y32=-y23;Y33=y13+y23+y34;Y34=-y34;
Y41=0;Y42=-y24;Y43=-y34;Y44=y34+y24;

//case(i) line shown dotted is not connected
Ybus=[Y11 Y12 Y13 Y14;
      Y21 Y22 Y23 Y24;
      Y31 Y32 Y33 Y34;
      Y41 Y42 Y43 Y44];
printf('(i)Assuming that the line shown is not connected \n Ybus= ');disp(Ybus);
//case(ii) line shown dotted is connected
Y12=Y12-y12;Y21=Y12;
Y11=Y11+y12;
Y22=Y22+y12;

Ybus=[Y11 Y12 Y13 Y14;
      Y21 Y22 Y23 Y24;
      Y31 Y32 Y33 Y34;
      Y41 Y42 Y43 Y44];
printf('\n\n(ii)Assuming that the line shown is connected \n Ybus= ');disp(Ybus);