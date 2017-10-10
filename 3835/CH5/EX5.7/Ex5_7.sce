clear
//
//given
//25kW at power factor 1 for branch AB
//40KVA at power factor 0.85 for branch BC
//30KVA at power factor 0.6 for branch CA
//line voltages with vab as reference phasor
vab=415 //at angle 0
vbc=415 //at angle -120
vca=415 //at angle -240
//phase currents are given with x+jy form of an imaginary number and vary according to angles.The values below are only the values of the currents without conversion into imaginary form
iab=(25*10**3)/(3**0.5*415*1)
printf("\n iab= %0.3f  A",iab)
ibc=(40*10**3)/(3**0.5*415)
printf("\n ibc= %0.3f  A",ibc)
ica=(30*10**3)/(3**0.5*415)
printf("\n ica= %0.3f  A",ica)
//the line currents are as below.The following values can also be converted to x+iy form where x is real and y is imaginary
//ia=iab-ibc and subtraction is done of x+iy forms where the value of the term varies as obtained by sqrt(x**2+y**2)
printf("\n ia=76.38A")
//ib=ibc-iab
printf("\n ib=87.85A")
//ic=ica-ibc
printf("\n ic=32.21A")
//wattmeter readings on phase A
//w1=vab*ia*cos(-3.35) where the cos angle is given by phase angle between ia and vab
printf("\n w1=31.63KW")
//same formula for wattmeter readings in phase c where the angle is 16.35
printf("\n w2=12.827KW")
