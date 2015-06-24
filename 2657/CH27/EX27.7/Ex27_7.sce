//Calculations on turbocharged CI engine
clc,clear
//Given:
Py=700 //Brake power at test in kW
py=96 //Test ambient pressure in kPa
Ty=302 //Test ambient temperature in K
phiy=0.2 //Relative humidity at test
px=69 //Site ambient air pressure in kPa
Tx=283 //Site ambient temperature in K
phix=0.4 //Relative humidity at site
N=1200 //Engine speed in rpm
V_s=45 //Swept volume in litres
m_f=51.3 //Fuel delivery in gm/s
pi=2.0 //Pressure ratio
eta_m=85 //Mechanical efficiency in percent
//Solution:
pr=100 //Standard total barometric pressure in kPa
Tr=298 //Standard air temperature in K
phir=0.3 //Standard relative humidity
//Refer table 27.1, 27.3
psy=4.1 //Saturation vapour pressure at test in kPa
psx=1.2 //Saturation vapour pressure at site in kPa
psr=3.2 //Standard saturation vapour pressure in kPa
q=m_f*1000/(N/(2*60)*V_s) //Fuel delivery in mg/litrecycle
qc=round(q/pi) //Corrected fuel delivery in mg/litrecycle
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
//Applying condition given in section 27.4.2
if (alpha_d > 0.9) & (alpha_d < 1.1) then
    Px=alpha_d*Py
else
    fa=((pr-phir*psr)/(py-phiy*psy))^0.7*(Ty/Tr)^1.5 //Atmospheric factor
    alpha_d=fa^fm //Correction factor for CI engine
    Pr=alpha_d*Py //Standard reference brake power in kW
    m=0.7,n=2 //Exponents
    k=(px/pr)^m*(Tr/Tx)^n //The ratio of indicated power
    alpha=k-0.7*(1-k)*(100/eta_m-1) //Power adjustment factor
    Px=alpha*Pr //Brake power at site in kW
end
//Results:
printf("\n Power at site ambient conditions, Px = %d kW",Px)
//Answer in the book is wrong
