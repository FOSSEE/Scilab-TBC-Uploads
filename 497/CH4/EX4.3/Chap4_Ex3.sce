//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-4, Example 3, Page 110
//Title: Power Requirement for a Fluidized Coal Combustor(FBC)
//==========================================================================================================
clear
clc

//INPUT
deltapd=[3;10]//Distributor pressure drop in kPa
deltapd2=10;//Distributor pressure drop in kPa
po=101;//Entering air pressure in kPa
To=20;//Entering air temperature in degree C
y=1.4;//Fugacity of air
deltapb=10;//Pressure drop in bed in kPa
p3=103;//Pressure at the bed exit in kPa
F=8;//Feed rate of coal in tons/hr
H=25;//Gross heatig value of coal in MJ/kg
Fa=10;//Air required at standard condition in nm^3/kg
etac=0.75;//Efficiency of compressor
etap=36;//Efficiency of plant in %

//CALCULATION
//Calculation of volumetric flow rate of air
vo=((F*1000)*Fa*((To+273)/273))/3600;

//Case(a) Distributor Pressure drop = 3kPa and Case(b) Distributor Pressure drop = 10kPa
n=length(deltapd);
i=1;
while i<=n
    p2(i)=p3+deltapb;//Calculation of pressure at the entrance of the bed
    p1(i)=p2(i)+deltapd(i);//Calculation of pressure before entering the bed
    ws(i)=(y/(y-1))*po*vo*((p1(i)/po)^((y-1)/y)-1)*(1/etac);//Calculation of power required for the compressor by Eqn.(18) & Eqn.(20)
    i=i+1;
end

//Case(c) 50% of the required bypassed to burn the volatile gases. Distributor Pressure drop = 3kPa
//No change in pressure drop from case(a)
v1=vo/2;//New volumetric flow rate of air
ws1=ws(1)/2;//Power required for blower for primary air
ws2=(y/(y-1))*po*v1*((p3/po)^((y-1)/y)-1)*(1/etac);//Power required for blower for bypassed air
wst=ws1+ws2;//Total power required for the two blowers
p=((ws(1)-wst)/ws(1))*100;//Saving in power when compared to case(a)

//OUTPUT
printf('\nCase(a)');
mprintf('\n\tVolumetric flow rate of air = %f m^3/hr',vo);
mprintf('\n\tPower required for compressor = %f kW',ws(1));
printf('\nCase(b)');
mprintf('\n\tVolumetric flow rate of air = %f m^3/hr',vo);
mprintf('\n\tPower required for compressor = %f kW',ws(2));
printf('\nCase(c)');
mprintf('\n\tVolumetric flow rate of air = %f m^3/hr',v1);
mprintf('\n\tPower required for compressor for primary air = %f kW',ws1);
mprintf('\n\tPower required for blower for bypassed air = %f kW',ws2);
mprintf('\n\tTotal power required for the two blowers = %f kW',wst);
mprintf('\n\tPower saved compared to case(a) = %f percent',p);

//====================================END OF PROGRAM ======================================================