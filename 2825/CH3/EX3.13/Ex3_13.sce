//Ex3_13 Pg-188
clc

disp("Refer to the figure 3.52")
disp("(a) Assuming the diode D to be ideal ")
disp("    Ignoring diode D,voltage across R2 is given as (By applying potential divider concept)")
R1=45 //resistor R1
R2=5 //resistor R2
Vaa=10 //supply voltage
Vab=Vaa*(R2/(R1+R2))
printf("\n Vab= %.0f V \n",Vab)

disp(" Thus,diode D is forward biased.It conducts,offering zero resistance  Hence no current would flow through the parallel bransh R2.The circuit equivalent to that shown in figure 3.53(a)")
ID=Vaa/R1 //diode current
printf("\n Current through diode = %.0f mA \n\n",ID*10^3)

disp("(b)Assuming the diode to be real")
disp("     Voltage Vab is much larger than Vt hencethe diode conducts.It is replaced by its equivalent as shown in figure 3.53(b).To determine current Id through the diode we first find the Thevenin''s equivalent of the circuit on the left of AB.Vth=open circuit voltage across AB")
Vth=Vaa*(R2/(R1+R2))
printf("\n Vth=%.0f V \n",Vth)
Rth=R1*R2/(R1+R2)
printf("\n Rth=%.0f ohm \n",Rth) //textbook value is wrong
 disp("Thus,the equivalent circuit becomes as shown in figure 3.53(c)")
 Vt=0.3 //load voltage
 tf=25 //load resistance
 Id=(Vth-Vt)/(Rth+tf)
 printf("\n Current through diode =%.1f mA \n\n",Id*10^3)
 
