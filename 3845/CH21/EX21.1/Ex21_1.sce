//Example 21.1
R1=1;//Resistance of resistor 1 (ohm)
R2=6;//Resistance of resistor 2 (ohm)
R3=13;//Resistance of resistor 3 (ohm)
R_s=R1+R2+R3;//Equivalent resistance for series combination (ohm)
printf('a.Total resistance = %0.1f ohm',R_s)

V=12;//Voltage (V)
I=V/R_s;//Current (A)
printf('\nb.Current = %0.3f A',I)

V1=I*R1;//Voltage drop in resistor 1 (V)
printf('\nc.Voltage drop in resistor 1 = %0.3f V',V1)
V2=I*R2;//Voltage drop in resistor 2 (V)
printf('\n  Voltage drop in resistor 2 = %0.2f V',V2)
V3=I*R3;//Voltage drop in resistor 3 (V)
printf('\n  Voltage drop in resistor 3 = %0.2f V',V3)
printf('\nDiscussion:\n  Sum of voltage drops across resistors = %0.1f V',V1+V2+V3)
if (V1+V2+V3)==V
    printf('\n  It is equal to the voltage output of the source')
else
    printf('\n  It is not equal to the voltage output of the source')
end

P1=I^2*R1;//Power dissipated in resistor 1 (W)
printf('\nd.Power dissipated in resistor 1 = %0.3f W',P1)
P2=I^2*R2;//Power dissipated in resistor 2 (W)
printf('\n  Power dissipated in resistor 2 = %0.2f W',P2)
P3=I^2*R3;//Power dissipated in resistor 3 (W)
printf('\n  Power dissipated in resistor 3 = %0.2f W',P3)

P=I*V;//Power output of source (W)
printf('\ne.Power output of source = %0.2f W',P)
if (P1+P2+P3)==P
    printf('\nDiscussion:\nIt is equal to the total power dissipated by the resistors, (P1+P2+P3)')
else
    printf('\nDiscussion:\nIt is not equal to the total power dissipated by the resistors, (P1+P2+P3)')
end
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
