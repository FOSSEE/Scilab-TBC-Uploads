clc
pathname=get_absolute_file_path('7_7_1.sce')
filename=pathname+filesep()+'771.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
u1=Vdot*10^4 /(10^3 *60*%pi*(ID1/2)^2)
u2=Vdot*10^4 /(10^3 *60*%pi*(ID2/2)^2)
deltaP=-((u2^2 - u1^2)/2 + g*deltaZ)*10^3
P1=P2-deltaP
printf(" \n P1=%E Pa",P1)