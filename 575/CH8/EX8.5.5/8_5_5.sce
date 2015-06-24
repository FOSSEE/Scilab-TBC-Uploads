clc
pathname=get_absolute_file_path('8_5_5.sce')
filename=pathname+filesep()+'855.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("From figure 8.5-2, ")
xL=0.185
xV=0.89
mL=basis*((xV-xF)/(xV-xL))
mV=basis-mL
Qdot=mV*Hv + mL*Hl - basis*HF
printf("Rate of heat transfer=%f Btu/h",Qdot)