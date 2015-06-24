clc
//initialization of varaibles
HV=4344 //B/lb
xC=56 //lb
R=1.986
T=530 //R
MC=56 //g/mol
//calculations
HR=xC*HV
Eb=-HR -R*T*(2-3)
HV=-Eb/MC
//results
printf("COnstant volume heating value = %d B/lb ",HV)
