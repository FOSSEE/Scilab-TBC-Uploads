clc
Pm = 10 // power of motor in kw
v = 40 // cutting speed in m/min.
ita = 70 // efficiency
ita = ita/100
Pc = Pm*ita 
Fc = (Pc*1000*60)/v // cutting force
sigmab = 250 // stress in Mpa
B = sqrt((Fc*1.25*6)/(sigmab*1.6)) // width of shank in mm
h = 1.6*B // hieght of shank in mm
l = 1.25*h // shank overang in mm
printf("\n The width of shank = %0.1f mm\n Height of shank = %0.2f mm\n Shank overhang = %0.1f mm" , B,h,l)
// 'Answers vary due to round off error'
