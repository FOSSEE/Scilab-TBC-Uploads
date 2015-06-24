//Example 7.21
//Calculate the rate of heat transfer .
//Given
Ts=800         //C, wall temp.
Tg=1100        //C. burner temprature
CO2=8          //percent, composition of CO2 in flue gas
M=15.2         //percent, composition of moisture in flue gas
a=0.4          //m, length of  duct
b=0.4          //width of duct
h=15           //W/m^2 C, heat transfer coefficient
P=1            //atm  pressure
//CAlCULATION of Eg(Tg)
pc=CO2/100*P         //atm, partial pressure of CO2
pw=M/100*P          //atm, partial pressure of moisture
l=1                 //m, length of duct
V=a*b*l             //m^3, volume of duct
A=1.6*l             //m^2 area of duct
Le=3.6*(V/A)        //m, mean beam length

pc*Le
pw*Le
Tg_=Tg+273
Ts_=Ts+273
//from fig 7.38
Ec=0.06
Eg=0.048             //from fig 7.39
//a correction dE need to be calculated
pw/(pc+pw)
pc*Le+pw*Le
//from fig. 7.39
dE=0.003
Eg_Tg=Ec+Eg-dE      //emissivity at temp. Tg

//Calculation of alpha
pc*Le*Ts/Tg
//from fig. 7.37
Ec1=0.068
//from fig. 7.38
Ew1=0.069
Cc=1                //correction factor
Cw=1                //correction factor
d_alpha=dE          //AT 1 ATM TOTAL PRESSURE
alpha=Cc*Ec1*(Tg_/Ts_)^0.65+Cw*Ew1*(Tg_/Ts_)^0.45-dE
//radiant   heat ransfer rate
s=5.669*10^-8                 //stephen's boltzman constant
Qrad=A*s*(Eg_Tg*Tg_^4-alpha*Ts_^4)      //kW
Qconv=h*A*(Tg-Ts)   //kW, convective heat transfer rate
Q=Qrad+Qconv
printf("The total rate of heat transfer from the gas to the wall is %f kW",Q/1000)
