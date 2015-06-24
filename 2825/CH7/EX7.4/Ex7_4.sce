//Ex7_4 Pg-370
clc

Beta=100 //transistor gain
Vcc=10 //supply voltage
R1=10*10^(3) //resistor R1 in ohm
R2=2200 //resistor R2 in ohm
Vce=0.7 //voltage drop in V
Re=2000 //emitter resistor in ohm
Rs=600 //source resistor in ohm

Vb=(Vcc*R2)/(R1+R2) //base voltage in V
disp("Base voltage Vb")
printf("            = %.1f V",Vb)
Ve=Vb-Vce //emitter voltage in V
disp("Emitter voltage Vb")
printf("            = %.1f V",Ve)
Ie=Ve/Re //emitter current
disp("Emitter current")
printf("            = %.2f mA",Ie*10^3)
disp("AC emitter diode resistance =25mV/ie")
re=25*10^(-3)/Ie //AC emitter diode resistance
printf("                             =%.0f ohm \n",re)
rc=((3.6*10)/(3.6+10))*10^(3) //Collector dioed resistance
A=rc/re //voltage gain(value in text book is wrong)
disp("Voltage gain A")
printf("    `        = %.0f",A)
zin_1=((10*2.2)/(10+2.2))
zin=((zin_1*Beta*A)/(zin_1+(Beta*A)))*1000
disp("Zin stage")
printf("             = %.3f kohm",zin*10^-3)
Vin=(zin/(Rs+zin))*10^(-3) //input voltage (value in text book is wrong)
disp("Input voltage")
printf("             = %.2f mV",Vin*10^3)
Vout=A*Vin //output voltage (value in textbook is wrong)
disp("Output voltage")
printf("             = %.2f mV",Vout*10^3)
