clc
clear
//Input data
T1=15+273//Inlet temperature of air in K
p1=1.03//Inlet pressure of air in kg/cm^2
rp=5//Pressure ratio
T3=815+273//Temperature of air entering the turbine in K
nc=0.83//Adiabatic efficiency of the compressor
nt=0.92//Internal engine efficiency of the turbine
nr=0.65//Effectiveness of regenerator
p2=2.45//Pressure in kg/cm^2 
T6=T1//Temperature in K
T9=T3//Temperature in K
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
g=1.4//Ratio of specific heat

//Calculations
T2=(T1*rp^((g-1)/g))//Temperature in K
T4=(T3/rp^((g-1)/g))//Temperature in K
Wt=(Cp*(T3-T4))//Isentropic work done in the turbine in kcal/kg of air
Wc=(Cp*(T2-T1))//Isentropic work done in the compressor in kcal/kg of air
Wr=(Wt/Wc)//Work ratio
qa=(Cp*(T3-T2))//Heat added in kcal/kg of air
nth=((Wt-Wc)/qa)*100//Thermal efficiency in percent
T2i=(T1+((T2-T1)/nc))//Temperature in K
T4i=(T3-(nt*(T3-T4)))//Temperature in K
Wti=(Cp*(T3-T4i))//work done in the turbine in kcal/kg of air
Wci=(Cp*(T2i-T1))//work done in the compressor in kcal/kg of air
Wri=(Wti/Wci)//Work ratio
qai=(Cp*(T3-T2i))//Heat added in kcal/kg of air
nthi=((Wti-Wci)/qai)*100//Thermal efficiency in percent
T2ii=(T2i+((T4i-T2i)*nr))//Temperature in K
qaii=(Cp*(T3-T2ii))//Heat added in kcal/kg of air
nthii=((Wti-Wci)/qaii)*100//Thermal efficiency in percent
T5=(T1*(p2/p1)^((g-1)/g))//Temperature in K
T5i=(T1+((T5-T1)/nc))//Temperature in K
T7=(T1*((rp*p1)/p2)^((g-1)/g))//Temperature in K
T7i=(T6+((T7-T6)/nc))//Temperature in K
T7ii=(T7i+((T4i-T7i)*nr))//Temperature in K
Wcomp=(Cp*((T5i-T1)+(T7i-T6)))//Compressor work in kcal/kg of air
Wratio=(Wti/Wcomp)//Work ratio
qaa=(Cp*(T3-T7ii))//Heat added in kcal/kg of air
nthe=((Wti-Wcomp)/qaa)*100//Thermal efficiency in percent
T8=(T3*(p2/(rp*p1))^((g-1)/g))//Temperature in K
T8i=(T3-((T3-T8)*nt))//Temperature in K
T10=(T9/(p2/p1)^((g-1)/g))//Temperature in K
T10i=(T9-((T9-T10)*nt))//Temperature in K
T2iii=(T2i+((T10i-T2i)*nr))//Temperature in K
Wturb=(Cp*((T3-T8i)+(T3-T10i)))//Compressor work in kcal/kg of air
Wratioi=(Wturb/Wci)//Work ratio
qaai=(Cp*((T3-T2iii)+(T9-T8i)))//Heat added in kcal/kg of air
nthei=((Wturb-Wci)/qaai)*100//Thermal efficiency in percent
T7iii=(T7i+((T10i-T7i)*nr))//Temperature in K
Wratioii=(Wturb/Wcomp)//Work ratio
qaaii=(Cp*((T3-T7iii)+(T9-T8i)))//Heat added in kcal/kg of air
ntheii=((Wturb-Wcomp)/qaaii)*100//Thermal efficiency in percent

//Output
printf('Condition     Work ratio     Thermal efficiency(in percent)\n   (a)           %3.3f                %3.1f\n   (b)           %3.2f                 %3.1f\n   (c)           %3.2f                 %3.1f\n   (d)           %3.2f                 %3.1f\n   (e)           %3.3f                %3.1f\n   (f)           %3.3f                %3.1f',Wr,nth,Wri,nthi,Wri,nthii,Wratio,nthe,Wratioi,nthei,Wratioii,ntheii)   
