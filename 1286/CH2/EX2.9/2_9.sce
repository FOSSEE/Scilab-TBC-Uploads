clc
//initialisations
e=6000*10^-10//m
p=25
l=1.5*10^-2
t2=40
t1=0
sx=13*10^-7//1/c
sy=231*10^-7//1/c
sz=231*10^-7//1/c
//CALCULATIONS
s=((p*e)/(2*l*(t2-t1)))
y=sx+sy+sz
//results
printf(' alpha of crystal= % 1f 1/C',s)
printf(' coefficient of cubical expansion= % 1f 1/C',y)
