
//To Determine the Maximum Torque as ratio of nominal value of voltage
//Page 205
clc;
clear;

//Resistances and Reactance for Nomrmal Value of Volttage and Frequency
w=50; //Frequency of supply
V=1; //Assumed Voltage
R1=0.05;
R2=0.05;
x1=0.3;
x2=0.3;

//Resistance and reactance at half voltage and half frequency
wh=50/2; //Frequency of supply
Vh=1/2; //Assumed Voltage
R1h=0.05;
R2h=0.05;
x1h=0.3/2;
x2h=0.3/2;

//Function to Determine the Maximum Torque
deff('x=Max(a,b,c,d,e)','x=(3*(a^2))/(2*b*(c+(sqrt((c^2)+((d+e)^2)))))')
//Function to Determine to the Starting Torque
deff('x=Start(a,b,c,d,e,f)','x=(3*(a^2)*f)/(b*(((c+f)^2)+((d+e)^2)))')
//Maximum Torques and Starting Torques at
//Normal Voltage And Frequency
Tm=Max(V,w,R1,x1,x2);
Tst=Start(V,w,R1,x1,x2,R2);
//Half Voltage and Half Frequency
Tmh=Max(Vh,wh,R1h,x1h,x2h);
Tsth=Start(Vh,wh,R1h,x1h,x2h,R2h);

//Ratio of torques as fraction of its normal value
R1=Tmh/Tm; 
R2=Tsth/Tst;

printf('i)The Maximum Torque at the reduced value of supply as a fraction of its normal value is %g\n',R1)
printf('ii)The Starting Torque at the reduced value of supply as a fraction of its normal value is %g\n',R2)
