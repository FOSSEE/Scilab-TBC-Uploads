//Chapter 3
//Example 3-14
//ProbOnVoltageGain 
//Page 62,63, Figure 3-11
clear;clc;
//Given
Rf = 40*10^3;
R1 = 10*10^3;
//Example 3-14(a)
Acl = (Rf + R1)/R1;
printf("\n\n Value of Voltage Gain =  %.4f \n\n",Acl)
//Example 3-14(b)
x=[0 2.5 5 7.5 10]
y=[-2 0 2 0 -2]
subplot(2,2,1)
a=gca()
a.thickness = 1;
a.x_location = 'middle';
plot2d(x,y,style=3,rect=[0,-2,10,2])
xtitle ( " Ei Vs t " , " t(ms) " , " Ei(V) " );
subplot(2,2,2)
x1=[0 2.5 5 7.5 10]
y1=[-10 0 10 0 -10]
x2=[0 2.5 5 7.5 10]
y2=[-2 0 2 0 -2]
a=gca()
a.thickness = 1;
a.x_location = 'middle';
plot2d(x1,y1,style=3,rect=[0,-15,10,15])
plot2d(x2,y2,style=1)
xtitle ( " Vo Vs t  " , " t(ms) " , " Vo and Ei " );
legend ( " Vo Vs t " , " Ei Vs t ");
xtitle ( " CRO waveshape of Vo and Ei Vs t ")
subplot(2,2,3)
//Example 3-14(c)
x=[-2 -1 0 1 2]
y=[-10 -5 0 5 10]
a=gca()
a.thickness = 1;
a.x_location = 'middle';
a.y_location = 'middle';
plot2d(x,y,style=3,rect=[-2,-15,2,15])
xtitle ( " Vo Vs Ei  " , " Ei(V) " , "Vo(V) " );
legend ( " Slope = +5 ");
xtitle ( "Input-output characteristic of a noninverting Amplifier")