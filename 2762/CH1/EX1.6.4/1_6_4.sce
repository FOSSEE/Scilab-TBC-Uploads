//Transport Processes and Seperation Process Principles
//Chapter 1
//Example 1.6-4
//Introduction to engineering principles and units
//given data
//heat of combustion for carbon to carbon dioxide is -393x10^3 kJ/kg mol or -94.0518 kCal/g mol
//heat of combustion for carbon to carbon monoxide is -110x10^3 kJ/kg mol or -26.4157 kCal/g mol
//basis: 10 g bol of carbon where 90% converts to carbon dioxide and rest to carbon monoxide
HkJ=(90/100)*10*(-393.513)+(10/100)*10*(-110.523);//change in enthalpy= sum of heat of combustion of products(as reactant is a plain element)
HkCal=(90/100)*10*(-94.0518)+(10/100)*10*(-26.4157);
mprintf("change in enthalpy %f kJ",HkJ)
mprintf("change in enthalpy  %f kCal",HkCal)
//end
