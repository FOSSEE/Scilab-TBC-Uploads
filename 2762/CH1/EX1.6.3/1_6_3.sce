//Transport Processes and Seperation Process Principles
//Chapter 1
//Example 1.6-3
//Introduction to engineering principles and units
//given data
//a)at 101.325 kPa

H1=88.60;// enthalpy of water in kJ/kg at 21.11 degree celcius
H2=251.13;// enthalpy of water kJ/kg at 60 degree celcius
delH1=H2-H1;//change in enthalpy in SI units
//enthalpy change in English units
h1=38.09;//enthalpy of water in btu/lb at 70 degree F
h2=107.96;//enthalpy of water in btu/lb at 140 degree F
delh1=h2-h1;//change in enthalpy in English units
mprintf("change in enthalpy in SI and English units :%f kJ/kg and %f btu/lb respectively",delH1,delh1);
//b)Enthalpy change 172.2 kPa
H3=2699.9;// enthalpy of water kJ/kg at 115.6 degree celcius
delH2=H3-H1;
h3=1160.7; //enthalpy of water in btu/lb
delh2=h3-h1;//change in enthalpy in English units
mprintf("change in enthalpy in SI and English units :%f kJ/kg and %f btu/lb respectively",delH2,delh2);
//c)Enthalpy change at 172.2 kPa
H4=484.9;//enthalpy of water in kJ/kg at 115.6 degree C
delH3=H3-H4; //enthalpy change in SI units
h4=208.4;//enthalpy of water in btu/lb at 240 degree F
delh3=h3-h4;//change in enthalpy in English units
mprintf("change in enthalpy in SI and English units :%f kJ/kg and %f btu/lb respectively",delH3,delh3);
//end
