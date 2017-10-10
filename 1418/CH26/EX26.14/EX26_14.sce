//EXAMPLE 26_14
//COMPOUND GENERATOR

clc;
funcprot(0);

//Variable Initialisation
V=120;.............//Terminal voltage in Volts
Rsh=25;............//Resistance of shunt field in Ohms
Ra=0.06;...........//Resistance of armature in Ohms
Rse=0.04;.........//Resistance of series field in Ohms
I=100;.............//Load current in Amperes
Rd=0.1;.............//Diverter resistance in Ohms

//Induced EMF when the machine is connected as long shunt
Ish=V/Rsh;..........//Current through shunt field in Amperes
Ia=I+Ish;...........//Armature current in Amperes
disp(Ia,"Armature current in Amperes if the machine is connected as long shunt:");
Vse=Ia*Rse;.........//Voltage drop in series winding in Volts
y=round(Vse*100)/100;......//Rounding of decimal places
Va=Ia*Ra;...........//Armature voltage drop in Volts
y1=round(Va*100)/100;.......//Rounding of decimal places
E=V+Va+Vse;.............//Induced EMF in Volts
y2=round(E*10)/10;.......//Rounding of decimal places
disp(y2,"Induced EMF in Volts if the machine is connected as long shunt:");

//Induced EMF when the machine is connected as short shunt
Vse=I*Rse;.........//Voltage drop in series winding in Volts
Vsh=V+Vse;...........//Armature voltage drop in Volts
Ish=Vsh/Rsh;..........//Current through shunt field in Amperes
y3=round(Ish);
Ia1=I+Ish;.............//Armature current in Amperes
y3=round(Ia1);..........//Rounding of decimal places
disp(y3,"Armature current in Amperes if the machine is connected as short shunt:");
Va=y3*Ra;..............//Armature voltage drop in Volts
E1=V+Va+Vse;...........//Induced EMF in Volts
disp(E1,"Induced EMF in Volts if the machine is connected as short shunt:");

//Diverted connected in parallel with the series winding
Ised=Ia*Rd/(Rd+Rse);....................//Current through series windin when diverter is connected in parallel in Amperes
y4=round(Ised*100)/100;...................//Rounding of decimal places

if y4<Ia then printf("Series field current has decreased from %0.2f A to %0.2f A",Ia,y4);
    printf("\nChange in series field ampere-turns would be the same as the change in the field current");
else
    printf("Series field current has increased from %0.2f A to %0.2f A",Ia,y4);
    printf("\nChange in series field ampere-turns would be the same as the change in the field current");
end

x=(y4-Ia)*100/Ia;.....................//Percentage decrease in series field ampere-turns
y5=round(x*10)/10;....................//Rounding of decimal places
printf("\nPercentage decrease in series field ampere-turns: %0.2f ",y5);


