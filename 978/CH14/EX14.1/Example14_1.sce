//chapter-14,Example14_1,pg 421

delVo=120*10^-3//output voltage

Vs=12//supply voltage

R=120//initial resistance

delR=(delVo*2*R)/Vs//change in resistance

per=(delR/R)*100//percent change in resistance

printf("percent change in resistance\n")

printf("per=%.2f",per)