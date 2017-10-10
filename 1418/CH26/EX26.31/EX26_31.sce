//EXAMPLE 26.31
//DC SHUNT GENERATOR

clc;
funcprot(0);

//Variable Initialisation
Po=10;............//Output power in Kilo Watts
V=240;...........//Terminal voltage in Volts
Ra=0.6;..........//Armature resistance in Ohms
Rsh=160;.........//Shunt field resistance in Ohms
Lcm=500;...........//Sum of core losses and mechanical losses in Watts

If=V/Rsh;............//Field current in Amperes
I=(Po*1000)/V;.......//Load current in Amperes
y=round(I*100)/100;..//Rounding of decimal places
Ia=y+If;.............//Armature current in Amperes
Lfcu=Rsh*If^2;........//Field copper loss in Watts
Lacu=Ra*Ia^2;...........//Armature copper loss in Watts
y1=round(Lacu);..........//Rounding of decimal places
Lt=((Lfcu)+(y1)+(Lcm))/1000;......//Total losses in Kilo Watt
Pin=(Po)+Lt;...........//Power input at the shaft in Kilo Watts
disp(Pin,"Power input at the shaft in Kilo Watts:");
eff=Po*100/Pin;........//Efficiency in Percentage
y2=round(eff*10)/10;
disp(y2,"Efficiency in Percentage:");
