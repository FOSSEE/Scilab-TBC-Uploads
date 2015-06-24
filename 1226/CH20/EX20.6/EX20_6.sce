clc;funcprot(0);//EXAMPLE 20.6
// Initialisation of Variables
ma=14;........//Quantity of air delivered in kg/min
p1=1.013;......//Intake pressure in bar
t1=288;.........//Intake temperature in K
p2=7;...........//Delivery pressure in bar
N=300;..........//Compressor rpm
pervc=0.05;.......//Percentage of clearance volume in the total stroke volume
n=1.3;............//Compressor and expansion index
//Calculations
V1byVs=pervc+1;
v1minv4=ma/(N*2);v4byv3=((p2/p1)^(1/n));v4byvs=v4byv3*pervc;Vs=v1minv4/(V1byVs-v4byvs);.....//Swept volume in m^3
disp(Vs,"Swept volume in m^3:")
t2=t1*((p2/p1)^((n-1)/n));........//Delivery Temperature in K
disp(t2,"Delivery temperature in K:")
IP=((n)/(n-1))*p1*(10^5)*((ma)/(60*1000))*(((p2/p1)^((n-1)/n))-1);
disp(IP,"Indicated Power in kW:")
