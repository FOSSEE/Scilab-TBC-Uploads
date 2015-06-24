//limiting and excess reagent

clear;
clc;

printf("\t Example 3.15\n");

Urea=60.06;//mol. mass of Urea, g
NH3=17.03;//mol. mass of NH3, g
CO2=44.01;//mol. mass of CO2, g

//(a)
//for NH3
mNH3=637.2;//mass of NH3, g
nNH3=mNH3/NH3;//moles of NH3
nUrea1=nNH3/2;//moles of Urea

//for CO2
mCO2=1142;//mol. mass of CO2, g
nCO2=mCO2/CO2;//moles of CO2
nUrea2=nCO2;//moles of Urea

if(nUrea1>nUrea2) then//finding limiting reagent
    nUrea=nUrea2;
    limiting="CO2";
else limiting="NH3";
    nUrea=nUrea1;
    end;
printf("\t the limiting reagent is : %s\n",limiting);

//(b)
mUrea=nUrea*Urea;//mass of urea produced
printf("\t the mass of the Urea produced is : %1.0f g\n",mUrea);

//(c)
if(limiting=="NH3") then//finding excess reagent
    nCO2excess=nCO2-nNH3/2;
    mCO2excess=nCO2excess*CO2;
printf("\t the mass of excess CO2 is : %1.0f g\n",mCO2excess);
else nNH3excess=nNH3-2*nCO2;
     mNH3excess=nNH3excess*NH3;
printf("\t the mass of excess NH3 is : %1.0f g\n",mNH3excess);    
end;

//End

