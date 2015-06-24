//Calculations on turbocharged CI engine
clc,clear
//Given:
Py=896 //Brake power at test in kW
py=96 //Test ambient pressure in kPa
Ty=302 //Test ambient temperature in K
phiy=0.2 //Relative humidity at test
px=98 //Site ambient air pressure in kPa
Tx=315 //Site ambient temperature in K
phix=0.4 //Relative humidity at site
N=1800 //Engine speed in rpm
V_s=51.8 //Swept volume in litres
m_f=54.5 //Fuel delivery in gm/s
pi=2.6 //Pressure ratio
//Solution:
//Refer table 27.1, 27.3
psy=4.8 //Saturation vapour pressure at test in kPa
psx=8.2 //Saturation vapour pressure at site in kPa
q=m_f*1000/(N/(2*60)*V_s) //Fuel delivery in mg/litrecycle
qc=round(q/pi) //Corrected fuel delivery inmg/litrecycle
//Applying condition given in fig 27.2 for value of engine factor (fm)
if (qc <= 40) then
    fm=0.3;
elseif (qc >= 65) then
    fm=1.2;
else
    fm=0.036*qc-1.14;
end
fa=((px-phix*psx)/(py-phiy*psy))^0.7*(Ty/Tx)^1.5 //Atmospheric factor
alpha_d=fa^fm //Correction factor for CI engine
Px=alpha_d*Py //Brake power at site in kW
//Results:
printf("\n Power at site ambient conditions, Px = %d kW",Px)
