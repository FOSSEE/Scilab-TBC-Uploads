clc
clear
//Input data
p=[1,9]//Pressures in ata
T=[25+273,1250+273]//Minimum and maximum temperatures in K
n=0.83//Compressor and turbine efficiencies
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
g=1.4//Ratio of specific heats
x=0.65//Cycle with 65% regeneration

//Calculations
//(a)Without regeneration
ip=sqrt(p(1)*p(2))//Intermediate pressure in ata
T2=(T(1)*(ip/p(1))^((g-1)/g))//Temperature in K
T3=(T(1)+((T2-T(1))/n))//Temperature in K
T4=T(1)//Temperature in K
T5=T2//Temperature in K
T6=T3//Temperature in K
T7=T(2)//Temperature in K
T8=T7/(ip/p(1))^((g-1)/g)//Temperature in K
T9=(T7-((T7-T8)*n))//Temperature in K
T10=T7//Temperature in K
T11=T8//Temperature in K
T12=T9//Temperature in K
Wc=(2*Cp*(T3-T(1)))//Work of compression in kcal/kg of air
We=(2*Cp*(T7-T8))//Work of expansion in kcal/kg of air
NW=(We-Wc)//Net output in kcal/kg of air
qi=(Cp*((T7-T6)+(T10-T9)))//Heat input in kcal/kg of air
nth=(NW/qi)*100//Thermal efficiency in percent

//(b)Cycle efficiency with 65% regeneration
Tg=(T6+(x*(T12-T6)))//Temperature in K
q=(Cp*((T7-Tg)+(T10-T9)))//Heat input in kcal/kg of air
nthi=(NW/q)*100//Thermal efficiency in percent

//(c)Cycle efficiency with ideal regeneration
Eg=T12//Temperature in K
qa=(2*Cp*(T7-Eg))//Heat added in kcal/kg of air
nthii=(NW/qa)*100//Thermal efficiency in percent

//Output
printf('(a)Cycle efficiency without regeneration is %3.1f percent \n (b)Cycle efficiency with 65 percent regeneration is %3.1f percent \n (c)Cycle efficiency with ideal regeneration is %3.0f percent',nth,nthi,nthii)
