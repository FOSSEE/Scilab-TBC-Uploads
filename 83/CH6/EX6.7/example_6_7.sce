//Chapter 6
//Example 6.7
//page 234
//To find modified Ybus after including regulating transformer
clear;clc;

y34=2-%i*6;y23=0.666-%i*2;
y12=2-%i*6;y24=1-%i*3;
y13=1-%i*3;

//case(i) when a=1/1.04;
a=1/1.04;
//to form Ybus matrix
Y11=y13+y12;Y12=-y12;Y13=-y13;Y14=0;
Y21=-y12;Y22=y12+y23+y24;Y23=-y23;Y24=-y24;
Y31=-y13;Y32=-y23;Y33=(a^2)*y34+y23+y13;Y34=-(a')*y34;
Y41=0;Y42=-y24;Y43=-a'*y34;Y44=y34+y24;


Ybus=[Y11 Y12 Y13 Y14;
      Y21 Y22 Y23 Y24;
      Y31 Y32 Y33 Y34;
      Y41 Y42 Y43 Y44];
printf('Case(i) When a=1/1.04');
printf('\nYbus=');disp(Ybus);
printf('\nObserve the changes in elements between bus 3&4 when compared with the result of example_6.2');

//case(ii) when a=e^(-j3)

a=cosd(3)-%i*sind(3);
//to form Ybus matrix
Y11=y13+y12;Y12=-y12;Y13=-y13;Y14=0;
Y21=-y12;Y22=y12+y23+y24;Y23=-y23;Y24=-y24;
Y31=-y13;Y32=-y23;Y33=(abs(a)^2)*y34+y23+y13;Y34=(a')*(-y34);
Y41=0;Y42=-y24;Y43=a*(-y34);Y44=y34+y24;


Ybus=[Y11 Y12 Y13 Y14;
      Y21 Y22 Y23 Y24;
      Y31 Y32 Y33 Y34;
      Y41 Y42 Y43 Y44];
printf('\n\nCase(ii) When a=e^(-j3)');
printf('\nYbus=');disp(Ybus);
printf('\nObserve the changes in elements between bus 3&4 when compared with the result of example_6.2');

