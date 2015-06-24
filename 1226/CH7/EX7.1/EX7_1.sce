clc;funcprot(0);//EXAMPLE 7.1
// Initialisation of Variables
D=20.3;................//Diameter in cm
L=30.5;.................//Length in cm
N=300;................//Engine rpm
eta=78;.................//Efficiency in percentage
afr=4/1;.................//Air Fuel Ratio

//Calculations
StV = ((%pi)/4)*((D/100)^2)*(L/100);.......//Calculating the stroke volume
Vinh= (eta/100)*StV;...................//Volume Inhaled
Gainh= (Vinh/(4+1));..............//Gas Inhaled
Gainhpm = Gainh*(N/2);
disp (Gainhpm,"Gas Inhaled per minute:(m^3/min)")
