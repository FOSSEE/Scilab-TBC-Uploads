//Transport Processes and Seperation Process Principles
//Chapter 1
//Example 1.7-2
//Introduction to engineering principles and units
//given data: CO + 0.5O2 -> CO2
//del H (298K)=-282.989*10^3 kJ/kg mol
//inlet flow rate= 1 kg mol/h=i
i=1;
it=0.5*i;// moles of O2 theorettically reqd
oa=it*(1.9);//moles of O2 actually added
n=oa*(0.79/0.21);//moles of N2 added
air=oa+n;
oout=oa-it;
// CO2 in outlet flue gas is 1 kg/h and N2 in outlet flue gas=n
//calculating input enthalpy of diff components from formula H= m*Cp*(delta T) and Cp evaluated from data tables
Hico=1*29.38*(473-298);
Hiair=4.520*29.29*(373-298);
Histd=-(-282.989*(10^3))*(1);
//calculating output enthalpy of diff components from formula H= m*Cp*(delta T) and Cp evaluated from data tables
HoCO2=1*49.91*(1273-298);
HoO2=oout*33.25*(1273-298);
HN2=n*31.43*(1273-298);
//Energy in=Energy out ; Hico+Hiair+q(heat added)+Histd=HoCO2+HoO2+HN2
q=HoCO2+HoO2+HN2-(Hico+Hiair+Histd);
mprintf("the heat removed in  is %f kJ/h",q)
//end
