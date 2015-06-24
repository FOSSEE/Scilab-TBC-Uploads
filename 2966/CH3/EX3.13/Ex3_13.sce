//lubricants//
//page 3.34 example 3//
clc
S=180//Saponification value of oil//
wt_oil=1//weight f oil saponified(gms)//
blank=50//volume blank titration reading(ml)//
normality_KOH=0.4//normality of KOH //
volume=S*wt_oil/(normality_KOH*56)//formula for saponification value//
back=blank-volume//volume of alcoholic KOH consumed(ml)//
printf("\nQuantity of alcoholic KOH required per gram is %.0f ml",back);