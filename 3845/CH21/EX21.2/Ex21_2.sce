//Example 21.2
R1=1;//Resistance of resistor 1 (ohm)
R2=6;//Resistance of resistor 2 (ohm)
R3=13;//Resistance of resistor 3 (ohm)
R_p=1/(1/R1+1/R2+1/R3);//Equivalent resistance for parallel combination (ohm)
printf('a.Total resistance = %0.3f ohm',R_p)

V=12;//Voltage (V)
I=V/R_p;//Current (A)
printf('\nb.Current = %0.2f A',I)

I1=V/R1;//Current through resistor 1 (A)
printf('\nc.Current through resistor 1 = %0.1f A',I1)
I2=V/R2;//Current through resistor 2 (A)
printf('\n  Current through resistor 2 = %0.2f A',I2)
I3=V/R3;//Current through resistor 3 (A)
printf('\n  Current through resistor 3 = %0.2f A',I3)
printf('\nDiscussion:\n  Total current = %0.2f A',I1+I2+I3)
if (I1+I2+I3)==I
    printf('\n  It is equal to the current output of the source')
else
    printf('\n  It is not equal to the current output of the source')
end

P1=V^2/R1;//Power dissipated in resistor 1 (W)
printf('\nd.Power dissipated in resistor 1 = %0.1f W',P1)
P2=V^2/R2;//Power dissipated in resistor 2 (W)
printf('\n  Power dissipated in resistor 2 = %0.1f W',P2)
P3=V^2/R3;//Power dissipated in resistor 3 (W)
printf('\n  Power dissipated in resistor 3 = %0.1f W',P3)

P=I*V;//Power output of source (W)
printf('\ne.Power output of source = %0.1f W',P)
if abs((P1+P2+P3)-P)<0.1
    printf('\nDiscussion:\nIt is equal to the total power dissipated by the resistors, (P1+P2+P3)')
else
    printf('\nDiscussion:\nIt is not equal to the total power dissipated by the resistors, (P1+P2+P3)')
end
//Disregarding a variation of less than 0.1W for sub-question(e)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
