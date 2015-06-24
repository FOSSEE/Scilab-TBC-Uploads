//Initilization of variables
m=1.5 //kg
i1=2 //Integral constant obtained after integrating
i2=3.33 //Integral constant obtained after integrating
//Calculations
//As indefinite integrals are not possible to code
//We directly consider the intergral which is a simple integral
//v=t^2-1.11*t^3
//After we derivate this expression we obtain
t=i1/i2 //s
//Now using the formula for v we get
v=t^2-((i2/3)*t^3) //ft/s
//Result
clc
printf('The maximum velocity is:%f m/s',v)
