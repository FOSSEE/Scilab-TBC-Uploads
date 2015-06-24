
clc
clear
//Input data
C=83.7;//The amount of carbon present in the fuel oil according to ultimate analysis of a fuel oil in %
H=12.7;//The amount of hydrogen present in the fuel oil according to ultimate analysis of a fuel oil in %
O=1.2;//The amount of oxygen present in the fuel oil according to ultimate analysis of a fuel oil in %
N=1.7;//The amount of nitrogen present in the fuel oil according to ultimate analysis of a fuel oil in %
S=0.7;//The amount of sulphur present in the fuel oil according to ultimate analysis of a fuel oil in %
td=27;//The dry bulb temperature of combustion air in degree centigrade
tw=21;//The wet bulb temperature of combustion air in degree centigrade
E=0.3;//Excess air and assuming complete combustion in %
t=200;//Temperature to find total volume of combustion products in degree centigrade
p=1.013;//Pressure to find total volume of combustion procucts in bar

//Calculations
Wth=(11.5*(C/100))+[34.5*((H/100)-(O/100)*(1/8))]+(4.3*(S/100));//Theoretical air required per kg of fuel in kg
WA=(1+E)*Wth;//Actual air required per kg of fuel in kg/kg fuel
sh=0.0132;//Specific humidity at DBT and WBT in kg moisture/kg dry air
W=WA*sh;//Water vapour entering with air per kg fuel in kg vap/kg fuel
Tw=(9*(H/100))+WA;//Total water vapour formed per kg fuel in kg
CO2=(44/12)*(C/100);//mass of carbondioxide gas per kg of fuel
O2=0.232*E*Wth;//Mass of oxygen gas per kg of fuel
N2=0.768*(1+E)*Wth+(N/100);//Mass of nitrogen gas per kg of fuel
SO2=(64/32)*(S/100);//Mass of nitrogen gas per kg of fuel
H2O=1.383;//Mass of water per kg of fuel
M=(CO2/44)+(O2/32)+(N2/28)+(SO2/64)+(H2O/18);//Moles of combustion gases formed per kg fuel
VG=M*22.4*[(273+t)/273]*(1.013/1.013);//Volume of flue gases at 200 degree centigrade and 1.013 bar per kg fuel
CO21=((CO2/44)/[(CO2/44)+(O2/32)+(N2/28)])*100;//Composition of dry flue gas CO2 by volume
O21=((O2/32)/[(CO2/44)+(O2/32)+(N2/28)])*100;//Composition of dry flue gas O2 by volume
N21=((N2/28)/[(CO2/44)+(O2/32)+(N2/28)])*100;//Composition of dry flue gas N2 by volume

//Output
printf('(a)The total volume of combustion products at 200 degee centigrade and 1.013 bar = %3.2f m^3 \n (b)The dry flue gas analysis based on carbondioxide,oxygen and nitrogen is \n Carbondioxide = %3.2f percent \n Oxygen = %3.2f percent \n Nitrogen = %3.2f percent',VG,CO21,O21,N21)
