//chapter-13,Example13_3,pg 510

Vi=12//input DC voltage

Vo=3.182//output voltage

Rg=130*10^3//grounding resistance 

R2=1*10^3//output resistance

R1=6.8*10^3//divider chain

Ig=((Vo-((R2*Vi)/(R1+R2)))/Rg)//grounding loop current

printf("grounding loop current\n")

printf("Ig=%.9f A\n",Ig)