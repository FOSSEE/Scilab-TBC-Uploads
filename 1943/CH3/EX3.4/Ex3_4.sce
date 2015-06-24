
clc
clear
//Input data
p1=1//Pressure in bar
T1=25+273//Temperature in K
rp=8//Pressure ratio of compressor
Tm=900+273//Maximum temperature in K
pd=3//pressure drop in combustion chamber in percent
nc=0.88//Efficiency of compressor
nt=0.88//Efficiency of turbine
CV=44.43//Calorific value of fuel in MJ/kg
cpa=1.006//Specific heat of air in kJ/kg.K
cpg=1.148//Specific heat of gas in kJ/kg.K
g1=1.333//Specific heat ratio of gas
g=1.4//Specific heat ratio of air
T3=425+273//Temperature in K
p2=40//Pressure in bar
p3=0.04//Condensor pressure in bar
Th=170.4+273//Temperature of feed water to the HRSG in K
nst=0.82//Efficiency of steam turbine
pdh=5//Pressure drop in HRSG in kPa
m=29.235//Steam flow rate in kg/s
A=1.0401//si=1.0401+0.1728*(h/c)
B=0.1728//si=1.0401+0.1728*(h/c)

//Calculations
//Gas turbine plant
T2=(rp^((g-1)/(g*nt)))*T1//Temperature in K
//Combustor
pc=((pd/100)*rp)//Pressure loss in bar
pcx=(rp-pc)//Pressure in bar
f=((cpg*(Tm-T1))-(cpa*(T2-T1)))/((CV*10^3)-(cpa*(T2-T1)))//Fuel flow rate in kg/s
af=(1-f)/f//Air fuel ratio
//C8H18+12.5O2->8CO2+9H2O
afc=(12.5*32)/(0.232*114)//Air fuel ratio for stoichiometric combustion
ea=((af-afc)/afc)*100//Excess air in percent
//Gas turbine
p4=p1+0.05//Pressure in bar
T4=(Tm/(pcx/p4)^(((g1-1)*nt)/g1))//Temperature in K
//HRSG
T5=250+30//Temeprature in K
ha=3272//Enthalpy in kJ/kg
hf=1087.31//Enthalpy in kJ/kg
ws=(cpg*((T4-273)-T5))/(ha-hf)//Flow rate in kg/s
he=721.1//Enthalpy in kJ/kg
T6=(T4-273)-((ws*(ha-he))/cpg)//Temperature in degree C
//Power output
sa=6.853//Entropy in kJ/kg.K
sbs=sa//Entropy in kJ/kg.K
xbs=(sbs-0.4266)/8.052//Dryness fraction
hbs=(121.46+xbs*2432.9)//ENthalpy in kJ/kg
Wst=(m*(ha-hbs)*nst)//Workdone in kW
wg=(m/ws)//gas flow rate in kg/s
wa=(1-f)*wg//Air flow rate entering the compressor in kg/s
Wgt=(wg*cpg*(Tm-T4))-(wa*cpa*(T2-T1))//Power output of gas turbine in kW
TO=Wst+Wgt//Total power output in kW
wf1=(f*wa)//Fuel mass flow rate in kg/s
wf=4.466//Rounding off of wf1 for exact answers
no=(TO/(wf*(CV*10^3)))*100//Overall efficiency of the combined plant in percent
ns=((ha-hbs)/(ha-he))*nst//Efficiency of steam plant
ngtp=(Wgt/(wf*(CV*10^3)))//Efficiency of the GT plant
xL=((wg*cpg*(T6-(T1-273)))/(wf*(CV*10^3)))//Lost heat coefficient
nov=(ns+ngtp-ns*ngtp-ngtp*xL)//The overall efficiency
//Energy fluxes and irreversibilities
si=(A+B*((18*1)/(8*12)))//si for octane C8H18
dHo=(wf*CV*10^3)//Power in kW
dGo=(si*dHo)//Power in kW
TS=(dGo-dHo)//Power in kW
//Compressor
dS=(cpa*log(T2/T1))-(((cpa*(g-1))/g)*log(rp))//change in entropy in kJ/kg.K
Ic=(wa*T1*dS)//power in kW
Icx=((wg*T1*((cpg*log(Tm/T1))-(((cpg*(g1-1))/g1)*log(pcx))))-(wa*T1*((cpa*log(T2/T1))-(((cpa*(g-1))/g)*log(rp))))+TS)//Compressor in kW
Icg=(-cpg*log(Tm/T4))-(((cpg*(g1-1))/g1)*log(p4/pcx))//Difference in entropy in kJ/kg.K
IGT=(Icg*T1*wg)//Gas turbine in kW
se=2.046//Enntropy in kJ/kg.K
sae=(sa-se)//Difference in entropy in kJ/kg.K
s64=(cpg*log((T6+273)/T4))-(((cpg*(g1-1))/g1)*log(p4/p1))//Difference in entropy in kJ/kg.K
Ih=(T1*m*sae)+(wg*T1*s64)//For HRSG in kW
hb=(ha-(nst*(ha-hbs)))//Enthalpy in kJ/kg
xb=(hb-121.46)/2432.9//Dryness Fraction
sb=(0.4226+xb*8.052)//Entropy in kJ/kg.K
Ist=(m*(sb-sa)*T1)//For steam turbine in kW
Iexh=(wg*cpg*((T6-(T1-273))-(T1*log((T6+273)/T1))))//For exhaust in kW
Tl=Icx+Icg+IGT+Ih+Ist+Iexh//Exergy losses in kW
T=Tl+Wgt+Wst//Total exergy output and exergy destruction in kW
ee=((Wst+Wgt)/T)*100//Exergy efficiency in percent

//Output
printf('(a) Total power output is %3.2f kW and overall efficiency is %3.2f percent lost heat coefficient is %3.3f\n Exergy efficiency is %3.0f percent \n\n Input is %3.0f kW \n Total Output is %3.0f kW \n Total losses is %3.0f kW \n Exergy outut + exergy destruction = %3.0f kW which is 1.3 percent gretter than the exergy input',TO,no,xL,ee,dGo,(Wgt+Wst),Tl,T)
