clc
AB=25 // in m from triangle ABD
AD=50 // in m from triangle ABD
angleBDA= atand (AB/AD)
angleBDC=320-230
angleADC=angleBDC-angleBDA
CA=AD*tand(angleADC) //from triangle ADC
printf('CA = %f m',CA)
