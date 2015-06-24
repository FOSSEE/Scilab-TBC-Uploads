//chapter-2,Example2_7,pg 485

CMRR=10*10^4//common mode rejection ratio

//set a=beta+k1*delbeta and b=beta(-/+)k2*delbeta

//CMRR=0.5*((4(+/-)3*delbeta*(k1-k2))/((+/-)delbeta*(k1-k2)))

//CMRR=0.5*((4(+/-)3*(a1-a2))/((+/-)(a1-a2)))

//a1->k1*delbeta, a2->k2*delbeta

delalpha=(2/CMRR)//a1-a2=delalpha

printf("tolerance in parameters\n")

printf("delalpha=%.7f \n",delalpha)

printf("Therefore, if a varies by 1 percent, b should not vary more than 2*10^-3 percent of variation of a ")