//To find monthly load factor Rating of distribution transformer monthly bill
//Page 72
clc;
clear;

T=730; //Average monthly time in hrs
Pla=22; //Peak Load for consumer A in kW
Plb=39; //Peak load for consumer B in kW
MEC=[0.025,0.02,0.015]; //Monthly Energy charges in cents/kWh according to the units consumed
Uc=[1000,3000,3000]; //Units consumption according to the Energy charges
MDC=2; //Monthly demand charge in dollars/kW

Pa=7000; //Units served to Consumer A in kWh
Pb=7000; //Units served to Consumer B in kWh

//Power factors
Pfa=0.9; // Lag
Pfb=0.76; //Lag

//Monthly Load factors
Flda=Pa/(Pla*T);
Fldb=Pb/(Plb*T);

//Continous kilovoltamperes for each distribution transformer
Sa=Pla/Pfa;
Sb=Plb/Pfb;

//Ratings of the distribution transformers needed
Ta=round(Sa/5)*5;
Tb=round(Sb/5)*5;

//Billing Charges
//For Consumer A
Mbda=Pla*(0.85/Pfa); // Monthly billing demand
Mdca=Mbda*MDC; //Monthly demand charge
//Since the units served are 7000 it can be split according to the rates  as 1000, 3000, 3000 excess units.
Uca=Uc; //Units consumption by A
Meca=MEC*Uca'; //Monthly energy charge
Tmba=Meca+Mdca; //Total monthly bill
 
//For Consumer B
Mbdb=Plb*(0.85/Pfb); // Monthly billing demand
Mdcb=Mbdb*MDC; //Monthly demand charge
//Since the units served are 7000 it can be split according to the rates  as 1000, 3000, 3000 excess units.
Ucb=Uc; //Units consumption by B
Mecb=MEC*Ucb'; //Monthly energy charge
Tmbb=Mecb+Mdcb; //Total monthly bill

//To find the capacitor size
Q1=Pb*tand(acosd(Pfb)); //For original power factor
Q2=Pb*tand(acosd(0.85)); //For new power factor

dQ=(Q1-Q2)/T; //Capacitor size

//For new power factor
//For Consumer B
Mbdbn=Plb*(1); // Monthly billing demand
Mdcbn=Mbdbn*MDC; //Monthly demand charge
//Since the units served are 7000 it can be split according to the rates  as 1000, 3000, 3000 excess units.
Ucbn=Uc; //Units consumption by B
Mecbn=MEC*Ucbn'; //Monthly energy charge
Tmbbn=Mecbn+Mdcbn; //Total monthly bill

Saving=abs(Tmbbn-Tmbb); //Saving due to capacitor installation
Ci=30; // Cost of capacitor in dollar per kVAr
Cc=Ci*dQ; //The cost of the installed capacitor
PP=Cc/Saving; //Payback Period
PPr=90/Saving; //Realistic Payback period

printf('a) Monthly load factor for :\n')
printf(' i) Consumer A = %g\n',Flda)
printf(' ii) Consumer B =%g\n',Fldb)
printf(' b) Rating of the each of the distribution transformer:\n')
printf(' i) A = %g kVA\n',Ta)
printf(' ii) B = %g kVA\n',Tb)
printf(' c) Monthly bil for:\n')
printf(' i) Consumer A = $%g\n',Tmba) 
printf(' ii) Consumer B = $%g\n',Tmbb)
printf(' d) The capacitor size required is %g kVAr\n',dQ)
printf(' e) Payback period:\n')
printf(' i) Calculated : %g months\n',ceil(PP))
printf(' ii) Realistic as capacitor size available is 3 kVAr : %g months\n',ceil(PPr))





