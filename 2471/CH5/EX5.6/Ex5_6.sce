clear ;
clc;
// Example 5.6
printf('Example 5.6\n\n');
printf('Page No. 120\n\n');

// given
x = 0.90;// dryness fraction
m = 0.25;// Mass flow rate in kg/s
P = 0.7;// pressure in bar
T1 = 10;// in degree celcius

//from steam table
h_10= 42*10^3;// Specific enthalpy  of water at 10 degree celcius in J/kg
h_25 = 105*10^3;// Specific enthalpy of water at 25 degree celcius in J/kg
h_30 = 126*10^3;// Specific enthalpy of water at 30 degree celcius in J/kg
h_s = 2432*10^3;// Specific enthalpy of steam in J/kg

//(a)T2 = 25;
T2 = 25;// in degree celcius
// By heat balance, heat transfered at 10 degree celcius = heat gained at 25 degree celcius; "(m*h_s)+(h_10*y)= (m*h_25)+(h_25*y)"; where 'y' is the quqntity of water to be used at 25 degree celcius in kg/s
y = (m*(h_s-h_25)/(h_25-h_10));
printf('the quantity of water to be used at 25 degree celcius is %.2f kg/s \n',y)


//(b)T2 = 30;
T2 = 30;// in degree celcius
// By heat balance, heat transfered at 10 degree celcius = heat gained at 30 degree celcius; "(m*h_s)+(h_10*y)= (m*h_30)+(h_30*y)"; where 'z' is the quqntity of water to be used at 30 degree celcius in kg/s
z = (m*(h_s-h_30)/(h_30-h_10));
printf('the quantity of water to be used at 30 degree celcius is %.2f kg/s \n',z)





