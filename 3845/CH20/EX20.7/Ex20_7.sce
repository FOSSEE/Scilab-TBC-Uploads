//Example 20.7
//Also see Example 20.4 and Example 20.5
I=2.50;//Current (A)
V=12;//Voltage (V)
P1=I*V;//Power dissipated by hot headlight (W)
printf('a.Power dissipated by headlight when hot= %0.1f W',P1)
R=0.350;//Cold resistance (ohm)
P2=V^2/R;//Power dissipated by headlight when first switched on (W)
printf('\n  Power dissipated by headlight when cold= %0.1f W',P2)
I_b=sqrt(P2/R);//Current drawn when cold (A)
printf('\nb.Current drawn when cold = %0.1f A',I_b)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
