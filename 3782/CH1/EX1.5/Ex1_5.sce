clear
present=19.5
actual=20
cm1=actual/present
cm12=(actual*actual)/(present*present)
pm=125.5
apm=pm*cm12
printf("\n actual area present= %0.3f square cm',apm)

cm=40
cm2=cm*cm

area=cm2*apm
scale=(20.05*20.05)/(20*20)
ta=scale*area
printf("\n true area= %0.3f square meters',ta)
