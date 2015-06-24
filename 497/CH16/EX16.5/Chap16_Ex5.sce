//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-16, Example 5, Page 425
//Title: Solvent Recovery from Polymer Particles
//==========================================================================================================

clear
clc

//INPUT
rhos=1600;//Density of solid in kg/m^3
Cps=1.25;//Specific heat of solids in kJ/kg K
Fo=0.5;//Flow rate of solids in kg/s
Tsi=20;//Inital temperature of solids in degree C
Qwi=1;//Initial moisture fraction in water
Qwf=0.2;//Final moisture fraction in water
Qhi=1.1;//Initial moisture fraction in heptane
Qhf=0.1;//Final moisture fraction in heptane
Tgi=240;//Initial temperature of gas in degee C
Te=110;//Bed temperature in degree C
ephsilonm=0.45;//Void fraction of fixed bed
ephsilonf=0.75;//Void fraction of fluidized bed
uo=0.6;//Superficial gas velocity in m/s
di=0.08;//Diameter of tubes in m
li=0.2;//Pitch for square arrangement
hw=400;//Heat transfer coefficient in W/m^2 K
Tc=238;//Temperature at which steam condenses in degree C
//Specific heats in kJ/kg K
Cwl=4.18;//Water liquid
Cwv=1.92;//Water vapor
Chl=2.05;//Heptane liquid
Chv=1.67;//Heptane vapor
//Latent heat of vaporization in kJ/kg
Lw=2260;//Water
Lh=326;//Heptane
//Density of vapor in kg/m^3 at operating conditions
rhow=0.56;//Water
rhoh=3.1;//Heptane
Lf=1.5;//Length of fixed bed in m
t=140;//Half-life of heptane in s
L=1.5;//Length of tubes in heat exchanger
pi=3.14;

//CALCULATION
//(a) Dryer without Internals
xw=(Qwi-Qwf)/(Qhi-Qhf);//Water-heptane weight ratio
xv=((Qwi-Qwf)/18)/((Qhi-Qhf)/100);//Water-heptane volume ratio
T=(Qwi-Qwf)/18+(Qhi-Qhf)/100;//Total volume
rhogbar=((Qwi-Qwf)/18)/T*rhow+((Qhi-Qhf)/100)/T*rhoh;//Mean density of the vapor mixture
Cpgbar=(((Qwi-Qwf)/18)/T)*rhow*Cwv+(((Qhi-Qhf)/100)/T)*rhoh*Cwv;//Mean specific heat of vapor mixture
//Volumetric flow of recycle gas to the dryer in m^3/s from Eqn.(53)
x=(Cpgbar*(Tgi-Te))^-1*[Fo*(Qwi-Qwf)*[Lw+Cwl*(Te-Tsi)]+Fo*(Qhi-Qhf)*[Lh+Chl*(Te-Tsi)]+Fo*(Cps*(Te-Tsi))];
r=Fo*[(Qwi-Qwf)/rhow+(Qhi-Qhf)/rhoh};//Rate of formation of vapor in bed
uo1=uo*(x/(x+r));//Superficial velocity just above the distributor
At=x/uo1;//Cross-sectional area of bed
dt=sqrt(4/pi*At);//Diameter of bed
B=-log(Qwf/Qwi)/t;//Bed height from Eqn.(63)
tbar=((Qhi/Qhf)-1)/B;//Mean residence time of solids
W=Fo*tbar;//Weight of bed
Lm=W/(At*(1-ephsilonm)*rhos);//Static bed height
Lf=(Lm*(1-ephsilonm))/(1-ephsilonf);//Height of fluidized bed

//(b) Dryer with internal heaters
f=1/8;//Flow rate is 1/8th the flow rate of recirculation gas as in part (a)
x1=f*x;//Volumetric flow of recycle gas to the dryer in m^3/s from Eqn.(53)
uo2=uo*(x1/(x1+r));//Superficial velocity just above the distributor
Abed=x1/uo2;//Cross-sectional area of bed
q=[Fo*(Qwi-Qwf)*[Lw+Cwl*(Te-Tsi)]+Fo*(Qhi-Qhf)*[Lh+Chl*(Te-Tsi)]+Fo*(Cps*(Te-Tsi))]-Abed*uo2*Cpgbar*(Tgi-Te);//Heat to be added from energy balance of Eqn.(53)
Aw=q*10^3/(hw*(Tc-Te));//Total surface area of heat exchanger tubes
Lt=Aw/(pi*di);//Total length of tubes
Nt=Lt/L;//Total number of tubes
Atubes=Nt*(pi/4*di^2);//Total cross-sectional area of tubes
Atotal=Abed+Atubes;//Total cross-sectional area of tube filled dryer
d=sqrt(Atotal*pi/4);//Diameter of vessel
li=sqrt(Atotal/Nt);//Pitch for square array of tubes

//OUTPUT
printf('\n\t\t\tBed diameter(m)\tRecycle vapor flow(m^3/s)');
printf('\nWithout internal heater\t%f\t%f',dt,x);
printf('\nWith heating tubes\t%f\t%f',d,x1);

//====================================END OF PROGRAM ======================================================