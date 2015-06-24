clc;
TL=-15; // Source temperature in degree celcius
TH=40; // Sink temperature in degree celcius
// From the table of properties of Freon - 12
h3=74.53; h1=180.85; h4=h3; // specific enthalpy in kJ/kg 
s1=0.7046; s2=0.682; // specific entropy in kJ/kg K
// (a)               
// (i).Condensor and Evaporator pressure
pc=0.9607; // Saturation pressure at TH in MPa
pE=0.1826; // Saturation pressure at TL in MPa
disp ("MPa",pE,"Evaporator pressure = ","MPa",pc,"Condensor pressure = ","(i).Condensor and Evaporator pressure","(a)");
// (ii).Compressor discharge temperature  & Enthalpy
p2=pc; // Condensor pressure
s2=s1; // refer figure 8.25
// From the table of properties of Freon - 12 at pc
t2=46.8; // Compressor discharge temperature in degree celcius
h2=208.3; // specific enthalpy in kJ/kg 
disp ("kJ/kg",h2,"Enthalpy = ","oC",t2,"Compressor discharge temperature = ","(ii).Compressor discharge temperature  & Enthalpy");
// (iii).Ratio of COP of the cycle to Carnot COP
w=h2-h1; // Compressor work
qL=h1-h4; // Refrigeration effect
COP=qL/w; // COP of the cycle
COPc=4.68; // COP of carnot cycle from example 8.7
r=COP/COPc; // Ratio of COP of the cycle to Carnot COP
disp (r,"(iii).Ratio of COP of the cycle to Carnot COP = ");
// (b)                
QL=0.440; // Capacity of refrigerator in kW (1/8 ton of refrigeration)
m=QL/qL; // Mass flow rate of refrigerant
W=m*w; // Power consumption of compressor
QH=QL+W; // Heat rejected
disp ("kW",QH,"Heat rejected to surroundings = ","kW",W,"Power consumption of compressor = ","kg/s",m,"Mass flow rate of refrigerant = ","(b)");
