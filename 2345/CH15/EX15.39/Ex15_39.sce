//Finding resistance and cost
//Example 15.39(pg. 418)
clc
clear
m=2//weight of water to be heated in kg
t2=98,t1=15//temp in degreeC
s=1//specific heat of water
V=200//voltage in volts
H=m*s*(t2-t1)//energy required to raise the temp of water in kcal
H1=H*4200//energy in Watt-sec or Joules
e=0.85//efficiency of kettle
E=H1/e//energy input required in watt-sec
E1=E/(1000*3600)//energy input in kWh
c=35//cost per unit in paise
C=c*E1//ocst of energy used in paise
t=10/60//time in hrs
W=E1*1000/t//wattage of kettle in watts
R=V*V/W//resistance of heating element in ohms
printf('Thus the resistance of heating element is %2.0f ohms\n',R)
printf('And the cost of energy used is %2.0f paisa',C)
