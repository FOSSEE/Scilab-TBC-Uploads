clc
clear
//Input data
T=600;//Temperature at constant pressure process in K
p=1;//The pressure in atm
E=50;//The amount of excess air in percent
L=20;//The amount of less air in percent
cp=52.234;//Specific constant for methane in kJ/kmolK
T1=298;//Assume the normal temperature in K

//Calculations
hfch=-74.87;//The enthalpy of formation for carbondioxide in MJ
hch=cp*(T-T1)*10^-3;//The change in enthalpy of carbondioxide in MJ
ho=9.247;//The change in enthalpy of oxygen in MJ
hn=8.891;//The change in enthalpy of nitrogen in MJ
HR=hfch+hch+(3*ho)+(11.28*hn);//The total enthalpy on the reactants side in MJ
hfc1=-393.52;//The enthalpy of formation of carbondioxide in MJ
hfh1=-241.82;//The enthalpy of formation of water in MJ
HP=hfc1+(2*hfh1);//The enthalpy of products side in MJ
x=HR-HP;//The change in enthalpy for the remaining in MJ
hn2=x/11.28;//The enthalpy of nitrogen assumed to be in MJ/kmol
Tc=2800;//The corresponding temperature in K
T1=2000;//The temperature for first trail in K
hfc11=91.45;//The enthalpy for the assume temp for carbondioxide in MJ
hfh11=72.689;//The change in enthalpy for the assume temp for water in MJ
hfn11=56.141;//The change in enthalpy for the assume temp for nitrogen in MJ
hfo11=59.199;//;//The change in enthalpy for the assume temp for oxygen in MJ
HP1=hfc11+(2*hfh11)+(11.28*hfn11)+(hfo11)+(HR-x);//The total enthalpy on the products side for first trail in MJ
T2=2100;//The temperature for second trail in K
hfc22=97.5;//The enthalpy for the assume temp for carbondioxide in MJ
hfh22=77.831;//The change in enthalpy for the assume temp for water in MJ
hfn22=59.748;//The change in enthalpy for the assume temp for nitrogen in MJ
hfo22=62.986;//;//The change in enthalpy for the assume temp for oxygen in MJ
HP2=hfc22+(2*hfh22)+(11.28*hfn22)+(hfo22)+(HR-x);//The total enthalpy on the products side for second trail in MJ
Ta1=[[(HR-HP1)/(HP2-HP1)]*(T2-T1)]+T1;//The adiabatic temperature for constant pressure process in K
X=2*[2-1.6];//By balance oxygen
hfchr=-74.87;//The enthalpy of formation for methane in MJ
hor=9.247;//The change in enthalpy for oxygen in MJ
hnr=8.891;//The change in enthalpy for nitrogen in MJ
HRr=hfchr+hch+(1.6*hor)+(6.01*hnr);//The total enthalpy on reactants side in MJ
hfcop=-110.52;//The formation of enthalpy for carbonmoxide in MJ
hfcp=-393.52;//The formation of enthalpy for carbondioxide in MJ
hfhp=-241.82;//The formation of enthalpy for water in MJ
HPp=(0.8*hfcop)+(0.2*hfcp)+(2*hfhp);//The enthalpy on product side in MJ
Tp1=2000;//The temperature for first trail in K
hco11=56.739;//The change in enthalpy for CO in MJ
hco211=91.45;//The change in enthalpy for CO2 in MJ
hh11=72.689;//The change in enthalpy for water in MJ
hn11=56.141;//The change in enthalpy for nitrogen in MJ
HPp1=(0.8*hco11)+(0.2*hco211)+(2*hh11)+(6.016*hn11)-HPp;///The enthalpy on the products side for trail temp in MJ
Tp2=2400;//The temperature for second trail in K
hco22=71.34;//The change in enthalpy for CO in MJ
hco222=115.788;//The change in enthalpy for CO2 in MJ
hh22=93.604;//The change in enthalpy for water in MJ
hn22=70.651;//The change in enthalpy for nitrogen in MJ
HPp2=(0.8*hco22)+(0.2*hco222)+(2*hh22)+(6.016*hn22)+HPp;///The enthalpy on the products side for trail temp in MJ
Tp3=2300;//The temperature for first trail in K
hco33=67.676;//The change in enthalpy for CO in MJ
hco233=109.671;//The change in enthalpy for CO2 in MJ
hh33=88.295;//The change in enthalpy for water in MJ
hn33=67.007;//The change in enthalpy for nitrogen in MJ
HPp3=(0.8*hco33)+(0.2*hco233)+(2*hh33)+(6.016*hn33)+HPp;///The enthalpy on the products side for trail temp in MJ
Ta2=[[(HRr-HPp3)/(HPp2-HPp3)]*(Tp2-Tp3)]+Tp3;//The adiabatic temperature for constant pressure process in K
hccc=-283.022;//The only combustible substance is CO in MJ/kmol
Q=-0.8*hccc;//The thermal energy loss in MJ/kmol fuel

//Output
printf(' The adiabatic flame temperature having \n    (a)50 percent excess air is %3.1f K \n    (b)20 percent less air is %3.1f K \n The loss of thermal energy due to incomplete combustion is %3.1f MJ/kmol fuel',Ta1,Ta2,Q)
