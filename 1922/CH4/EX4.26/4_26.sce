clc
clear
//Initialization of variables
ma=500 //kg/h
cp1=3.2 //kJ/kg K
ta=20 //C
mb=200
mc=300 //kg/h
cp2=2.8 //kJ/kg K
tc=80 //C
tb=80 //C
me=50 //kg/h
te=120 //C
td=120 //C
hg=503.7
he=2706.3
//calcualtions
Ws=(mb+me)*hg + mc*cp2*(tc) - me*he -ma*cp1*(ta)
//results
printf("Net work done = %d kJ/h",Ws)
