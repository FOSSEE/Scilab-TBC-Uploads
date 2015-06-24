clc
//initialisation of variables
t=80//celsius
tp=80.2//celsius
T=120
//CALCULATIONS
s=(10000)*((t-tp)/(t*(t-100)))
Tp=T-((s*t*(T-100))/10000)
//results
printf(' temperature= % 1f C',Tp)
