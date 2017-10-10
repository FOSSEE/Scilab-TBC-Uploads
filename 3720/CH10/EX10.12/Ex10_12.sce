// Example 10_12
clc;clear;funcprot(0);
//Given data
V=10.0;// m/s
L=1.52;// m

//Properties
nu=1.516*10^-5;// m^2/s

//Calculation
//(a)
x=L;// m
Re_x=(V*x)/nu;// Reynolds number
L=L*1000;// mm
x=[0,L];// mm

//For laminar case
for(i=1:2)
del_laminar(i)=(4.91*x(i))/sqrt(Re_x);// mm
del_turbulenta(i)=(0.16*x(i))/(Re_x)^(1/7);// mm
del_turbulentb(i)=(0.38*x(i))/(Re_x)^(1/5);// mm
end
xlabel('x,m');
ylabel('delta,mm');
x=x/1000;
plot(x,del_laminar,'b',x,del_turbulenta,'r',x,del_turbulentb,'g');
legend(['Laminar','Turbulent(a)','Turbulent(b)'],"in_upper_left");
//(b)
// For laminar boundary layer,
C_fxl=0.664/sqrt(Re_x);
// For turbulent boundary layer,
C_fxt=0.027/(Re_x)^(1/7);
printf('\nThe laminar boundary layer thickness at this same x-location=%0.2f mm \nThe turbulent boundary layer thickness at this same x-location=%0.1f mm \nThe local skin friction coefficient for the laminar boundary layer=%0.2e \nThe local skin friction coefficient for the turbulent boundary layer=%0.1e',del_laminar(2),del_turbulenta(2),C_fxl,C_fxt);
// The answer vary due to round off error
