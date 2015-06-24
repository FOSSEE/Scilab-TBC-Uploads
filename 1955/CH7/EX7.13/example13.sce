clc
clear
//input data
P1=5000*10^3//The initial power produced in W
H1=250//The initial head produced in m
N1=210//The initial speed of turbine in rpm
n0=0.85//Overall efficiency of the turbine 
H2=160//The final head produced in m
d=1000//density of the water in kg/m^3
g=9.81//Acceleration due to gravity in m/s^2


//calculations
Nu=N1/((H1)^(1/2))//The unit speed of the turbine 
Pu=P1/((H1)^(3/2))*10^-3//The unit power of the turbine 
Q1=P1/(d*g*n0*H1)//The initial discharge of the turbine in m^3/s
Qu=Q1/((H1)^(1/2))//The unit discharge of the turbine 
Q2=Qu*((H2)^(1/2))//The final discharge of the turbine in  m^3/s
N2=Nu*((H2)^(1/2))//The final speed of the turbine in rpm
P2=Pu*((H2)^(3/2))//The final power of the turbine in kW
Ns=(N2*((P2)^(1/2)))/((H2)^(5/4))//The specific speed of the turbine

//output
printf('(a)The unit speed of the turbine is %3.2f\n(b)The unit power of the turbine is %3.3f\n(c)The unit discharge of the turbine is %3.3f\n(d)The final discharge of the turbine is %3.2f m^3/s\n(e)The final speed of the turbine is %3.2f rpm\n(f)The final power of the turbine is %3.1f kW\n(g)The specific speed of the turbine is %3.2f',Nu,Pu,Qu,Q2,N2,P2,Ns)
