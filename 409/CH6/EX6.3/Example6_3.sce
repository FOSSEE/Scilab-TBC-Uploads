clear ;
clc;
// Example 6.3
printf('Example 6.3\n\n');
//Page no. 154
// Solution

//Basis 10000 gal motor oil at an assumed 77 degree fahrenheit
dn =  0.80 ;//Density of motor oil-[g/cm^3]
in_ms = (10000*(0.1337)*62.4*dn) ;// Initial mass of motor oil in the tank -[lb]
printf(' Initial mass of motor oil in the tank is %.1f lb\n',in_ms);
m_fr = .0015 ;//Mass fractional loss
printf('  Mass fractional loss is %.4f \n',m_fr);
Dsg = m_fr*in_ms ;// Mass balance for the fluid
printf('  Discharge of motor oil on flushing flow for 10000 gal motor oil is %.1f lb\n',Dsg);