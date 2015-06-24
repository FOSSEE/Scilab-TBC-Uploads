//Chapter-5, Example 5.21, Page 213
//=============================================================================
clc
clear


//INPUT DATA
t=24;//Time period in h
T=[-10,10];//Range of temperatures in degree C
x=0.1;//Depth in m
c=1970;//Specific heat in J/kg/K
p=1000;//Density in kg/m^3
k=0.349;//Thermal conductivity in W/m.K
ta=5;//Time in h

//CALCULATIONS
w=(2*3.14)/t;//Angular velocity in rad/h
Tm=(T(1)+T(2))/2;//Mean teperature in degree C
Tmax=T(2)-Tm;//Maximum temperature in degree C
a=((k*3600)/(p*c));//Thermal diffusivity in m^2/h
Txmax=Tmax*exp(-sqrt(w/(2*a))*x);//Amplitude of temperature variation in degree C
t1=sqrt(1/(2*a*w))*x;//Time lag of temperature wave at a depth of 0.1 m in h
t2=(3.14/w);//Time for surface temperature is minimum in h
t3=t2+ta;//Time in h
Tx=Tmax*exp(-sqrt(w/(2*a))*x)*cos((w*t3)-(x*x*sqrt(w/(2*a))));//Temperature at 0.1m 5 hours after the surface temperature reaches the minimum in degree C

//OUTPUT
mprintf('Amplitude of temperature variation at a depth of 0.1m is %3.2f degree C \n Time lag of temperature wave at a depth of 0.1 m is %3.2f h \n Temperature at 0.1m 5 hours after the surface temperature reaches the minimum is %3.3f degree C',Txmax,t1,Tx)

//=================================END OF PROGRAM==============================
