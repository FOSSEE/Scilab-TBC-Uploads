clc
clear
//Input data
P1=12;//Pressure of Dry saturated steam entering a steam nozzle in bar
P2=1.5;//Discharge pressure of Dry saturated steam in bar
f=0.95;//Dryness fraction of the discharged steam
l=12;//Heat drop lost in friction in percentage
hg1=2784.8;//Specific enthalpy of steam at 12 bar from steam tables in kJ/kg
hg2=2582.3;//Specific enthalpy of 0.95 dry steam at 1.5 bar from steam tables in kJ/kg

//Calculations
hd=hg1-hg2;//Heat drop in kJ/kg
V1=44.72*(hd)^(0.5);//Velocity of steam at discharge from the nozzle in m/s
n=1-(l/100);//Nozzle coefficient when 12 percent heat drop is lost in friction
V2=44.72*(n*hd)^(0.5);//Velocity of steam in m/s
percentV=((V1-V2)/V1)*100;//Percentage reduction in velocity

//Output
printf('(a)Final velocity of steam is %3.1f m/s\n (b)Percentage reduction in velocity is %3.2f percent',V1,percentV)
