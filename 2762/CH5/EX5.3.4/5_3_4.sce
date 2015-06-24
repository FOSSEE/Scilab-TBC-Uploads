//Transport Processes and Seperation Process Principles
//Chapter 5
//Example 5.3-4
//Principles of Unsteady State Heat Transfer
//given data
//si units
//nomenclature similar to previous questions
//conduction in x dirn
x1=0.03405;
y1=0.1016/2;
k=0.83;
alpha=2.007e-7;
t=0.75*3600;//time in s
r=0.75*3600;//hours to mins
x=0;
n=x/x1;
h=4540;
m=k/(h*x1);
X=(alpha*t)/(x1*x1);
//conduction in y direction
y=0;
y1=0.0508;
my=k/(h*y1);
Y=(alpha*t)/(y1*y1);
Yx=0.13;//taken from the figure
Yy=0.8;
Yxy=Yx*Yy;
T1=115.6;
T0=29.4;
Txy=T1-(Yxy*(T1-T0));
mprintf("temp at the centre of the can= %f deg C",Txy)
