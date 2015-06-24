//Transport Processes and Seperation Process Principles
//Chapter 5
//Example 5.5-1
//Principles of Unsteady State Heat Transfer
//given data
//english units
h=39.7;
k=0.498;//thermal conductivity
Cp=3.48*1000;//specific heat
rho=1073;//density
alpha=k/(rho*Cp)//temp coefficient 
w=0.203;
x1=w/2;
x=0;
n=x/x1;
m=k/(h*x1);
T1=1.7+273.2;
T0=37.8+273.2;
T=10+273.2;
Y=(T1-T)/(T1-T0);
X=0.9;//from the given graph, X=(alpha*t)/(x1^2)
t=(X*x1*x1)/(alpha);
mprintf("the time taken is %f s = %f h",t,t/3600)
//end
