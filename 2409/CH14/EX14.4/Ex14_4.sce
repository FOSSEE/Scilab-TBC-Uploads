
//Variable ecalration
Lf=120832     //Total frame length
Tb=14         //Traffic burts per frame
Rb=2          //Reference bursts per frame
T=103         //Guard interval(symbols)
P=280         //Preamble Symbols
R=P+8         //Reference channel symbols with addition of CDC
//Calculation

OH=2*(T+R)+Tb*(T+P)   //Overhead Symbols
nF=1-(OH/(Lf))   //Frame Efficiency

//Result
printf("Hence the frame efficiency of INTELSAT frame is %.3f",nF)
