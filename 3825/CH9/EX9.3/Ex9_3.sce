clc
hf1=191.83//in kJ/kg
hg1=2584.8//in kJ/kg
hf2=604.67//in kJ/kg
hg2=2737.6//in kJ/kg
sf1=0.6493//in kJ/kg K
sg1=8.1511//in kJ/kg K
sf2=1.7764//in kJ/kg K
sg2=6.8943//in kJ/kg K
h1=191.83//in kJ/kg
h2=h1
h3=604.67//in kJ/kg
h4=h3
h7=2995.7//in kJ/kg
s7=6.5422//in kJ/kg K
s8=s7
X8=(s8-sf2)/(sg2-sf2)//entropy equation using quality factor
mprintf("X8=%f\n",X8)//ans vary due to roundoff error
h8=(X8*hg2)+(1-X8)*hf2//enthalpy equation using quality factor
mprintf("h8=%fkJ/kg\n",h8)//ans vary due to roundoff error
s9=s7
X9=(s9-sf1)/(sg1-sf1)//entropy equation using quality factor
mprintf("X9=%f\n",X9)//ans vary due to roundoff error
h9=(X9*hg1)+(1-X9)*hf1//enthalpy equation using quality factor
mprintf("h9=%fkJ/kg\n",h9)//ans vary due to roundoff error
Yapostrophe=(h3-h2)/(h8-h2)//fraction of steam extracted from the turbine for preheating
mprintf("Yapostrophe=%f\n",Yapostrophe)//ans vary due to roundoff error
Eta=((h7-h4)-((1-Yapostrophe)*(h9-h1)))/(h7-h4)//thermal efficiency of steam power plant
mprintf("Eta=%f",Eta)//ans vary due to roundoff error




