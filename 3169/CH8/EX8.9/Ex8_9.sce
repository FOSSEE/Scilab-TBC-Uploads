//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 8.9
//working out of insulation coordination

//given data
V=220//voltage(in kV) of substation
BIL=1050//value of BIL(in kV)
BtoS=1.24//ratio of BIL to SIL

//calculation
Vh=245//highest voltage(in kV)
Vg=Vh*sqrt(2)/sqrt(3)//highest system voltage
Vs=3*Vg//expected switching voltage(in kV)
Vfw=760//impulse sparkover voltage(in kV)
Vd1=690//discharge voltage(in kV) for 5 kA
Vd2=615//discharge voltage(in kV) for 2 kA
//SIL = BIL/BtoS = 846 ~ 850 kV
SIL=850//value of SIL(in kV)
Pmlig=(BIL-Vd1)/BIL//protective margin for lightning impulses
Pmswi=(SIL-Vd2)/SIL//protective margin for switching gears
Pmspr=(BIL-Vfw)/BIL//margin when lightning arrester just sparks

printf('The protective margin for lightning impulses is %3.1f percentage',Pmlig*100)
printf('\nThe protective margin for switching gears is %3.1f percentage',Pmswi*100)
printf('\nThe margin when lightning arrester just sparks is %3.1f percentage',Pmspr*100)
