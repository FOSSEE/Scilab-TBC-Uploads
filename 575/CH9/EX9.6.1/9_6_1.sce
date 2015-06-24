clc
pathname=get_absolute_file_path('9_6_1.sce')
filename=pathname+filesep()+'961.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
y1=x*16
y2=(1-x)*30
xCH4=y1/(y1+y2)
HHVMethane=(H1+ 2*44.013)/M1
HHVEthane=(H2+ 3*44.013)/M2
HHV=xCH4*HHVMethane + (1-xCH4)*HHVEthane
printf(" \n HHV of Fuel=%f KJ/g",HHV)