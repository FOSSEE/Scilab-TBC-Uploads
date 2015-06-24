clc
// given data
pf=0.8 // power factor
Load=3 // load in kW
V=230 // voltage of kettle in V
P=500 // power of kettle in W
VA=pf*Load // VA load in kVA
C=4200 // specific heat of water in j/kg-K
T=45-20 // temperature difference in degree celsius

VAR=VA*1.6 // net required VAR rating thus 60% extra capacity

R=(V**2)/P // resistance by kettle in ohms

Po=7*(V**2)/R // power dissipation in W for 7 elements

printf( "7 elements are connected in parallel")

Q=Load*1000.0/(C*T) // flow rate in kg/sec

printf("\n The required flow rate is %.4f litre/sec",Q)



