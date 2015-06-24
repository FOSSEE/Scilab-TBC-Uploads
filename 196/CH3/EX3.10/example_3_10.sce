//Chapter 3
//Example 3-10
//ProbOnDCVoltage 
//Page 53,54
clear;clc;
xcos('Figure3_10.xcos');
//Figure 3-5(b)
x=[0 1 2]
y=[-5,5,-5]
subplot(2,2,1)
a=gca()
a.thickness = 1;
a.x_location = 'middle';
plot2d(x,y,style=3,rect=[0,-5,2,5])
xtitle ( " Eac Vs t " , " t(ms) " , " Eac(V) " );
subplot(2,2,2)
x1=[0 0.5 1 1.5 2]
y1=[10 5 0 5 10]
a=gca()
a.thickness = 1;
a.x_location = 'middle';
plot2d(x1,y1,style=3,rect=[0,-15,2,15])
xtitle ("Edc Vs t" , " t(ms)", " Edc(V)");
y2=[5 0 -5 0 5]
y3=[-2.5 -7 -12.5 -7 -2.5]
plot2d(x1,y2,style=2)
plot2d(x1,y3,style=1)
legend ( " Edc= - 5 V " , " Edc= 0 V ", " Edc= 7 V" );
xtitle (" Waveshapes of Vo for Edc = 0V, -5V , 7V")
//Figure 3-5(c)
subplot(2,2,3)
x4=[-5 0 5]
y4=[10 5 0]
y5=[5 0 -5]
y6=[-2.5 -7.5 -12.5]
a=gca()
a.thickness = 1;
a.y_location = 'middle';
a.x_location = 'middle';
plot2d(x4,y4,style=3,rect=[-5,-15,5,15])
plot2d(x4,y5,style=2,rect=[-5,-15,5,15])
plot2d(x4,y6,style=1,rect=[-5,-15,5,15])
legend ( " Edc= - 5 V " , " Edc= 0 V ", " Edc= 7 V" );
xtitle (" Vo Vs Eac " , " Eac(V)", " Vo ");
xtitle (" Output-Input Characteristic")
printf("\n\n If Edc = 0 V , Eac appears inverted at Vo ( Gain is -1 )")
printf("\n\n If Edc = - 5 V , Eac appears at the output as a 5 V dc-offset voltage upon which rides the inverted Eac ")
printf("\n\n If Edc = 7 V , then Eac shifts down by 7 V ") 


