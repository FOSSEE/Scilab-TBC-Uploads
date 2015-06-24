
clc
//initialisation of variables
Co=25.5//percent
Co2=6.58//percent
H2=13.20//percent
H20=6.23//percent
N2=48.49*100//percent
CO2=17.70//percent
CO=0.17//percent
O2=0.0268//percent
n=0.7945//mol
e=0.2701//mol
h=0.1935//mol
w=0.21//mol
//CALCULATIONS
D=((CO2*100)+(CO*100))*0.0001//mol
F=((Co*100)+(Co2*100))*0.0001//mol
E=(D*100)/(F*100)//mol
e=N2*E*0.0001//mol
D1=n-e//mol
A1=D1/0.79//mol
A2=A1/E//mols
F1=h/w//cu ft air per cu ft fuel
T=A2/F1*100//percent
//RESULTS
printf('The percent of theoretical air equals=% f percent',T)
