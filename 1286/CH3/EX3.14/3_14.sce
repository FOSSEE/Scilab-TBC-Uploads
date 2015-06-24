clc
//initialisations
po=101396.1
p=1.293
vo=1/p
t=273
cp=961.4
//calculations
R=po*vo/t
cv=cp-R
//results
printf(' specific heat at constant volume= % 1f',cv)
