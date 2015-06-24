//Transport Processes and Seperation Process Principles
//Chapter 9
//Example 9.3-1
//Drying of Process Materials
//given data
P=101.32;
pa=2.76;
pas=3.5;
H=(18.02/28.97)*(pa/(P-pa));//Humidity=(mol wt of water/mol wt of air)*(pa/(P-pa))
Hs=(18.02/28.97)*(pas/(P-pas));//saturation humidity
Hp=100*(H/Hs);//percentage humidity
Hr=100*(pa/pas);//relative humidity
mprintf("1) Humidity= %f kg H20/kg air",H);
mprintf("2)saturation Humidity= %f kg H20/kg air",Hs);
mprintf("3) percentage Humidity= %f percent",Hp);
mprintf("4) relative Humidity= %f percent",Hr);
