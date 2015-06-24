//chapter-10,Example10_1,pg 292

Vs=12//source voltage

R=120//resistance of arms 

delv=0.3//variation in output voltage(+/-)0.3

delRbyR=(4/Vs)*(delv)*100//percent change in resistance

Rm=100//meter resistance

delIm=(delRbyR/100)/(4*R*(1+(Rm/R)))//current variation

printf("percent change in resistance\n")

printf("delRbyR=%.2f \n",delRbyR)

printf("current variation\n")

printf("delIm=%.6f A",delIm)

