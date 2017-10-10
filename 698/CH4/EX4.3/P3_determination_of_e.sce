clc
//Example 4.3
//Determination of e

//------------------------------------------------------------------------------

//Given data
//Dimensions of I section
ro=0.125 //m
ri=0.06 //m
bi=0.06 //m
bo=0.05 //m
t=0.01 //m
h=0.065 //m
ti=0.015 //m
to=0.01 //m

res3=mopen(TMPDIR+'3_determination_of_e.txt','wt')
mfprintf(res3,'(a)\te=R-rn\n\n')
mfprintf(res3,'(b) Calculation of rn:\n')
mfprintf(res3,'\trn=(((bi-t)*ti)+((bo-t)*to)+(t*h))/((bi*log((ri+ti)/ri))+(t*log((ro-to)/(ri+ti)))+(bo*log(ro/(ro-to))))\n')

rn=(((bi-t)*ti)+((bo-t)*to)+(t*h))/((bi*log((ri+ti)/ri))+(t*log((ro-to)/(ri+ti)))+(bo*log(ro/(ro-to))))
mfprintf(res3,'\trn=%0.4f mm\n\n',rn* 10^3)

mfprintf(res3,'(c)Calculation of R:\n')
mfprintf(res3,'\tR=ri+ ((0.5* h^2 *t)+(0.5* ti^2 *(bi-t))+((bo-t)*to*(h- 0.5*to)))/(((bi-t)*ti)+((bo-t)*to)+(t*h))\n')

R=ri+ ((0.5* h^2 *t)+(0.5* ti^2 *(bi-t))+((bo-t)*to*(h- 0.5*to)))/(((bi-t)*ti)+((bo-t)*to)+(t*h))
mfprintf(res3,'\tR=%0.4f mm\n\n',R* 10^3)

e=R-rn
mfprintf(res3,'(d)e=R-rn= %0.4f mm',e* 10^3)

mclose(res3)
editor(TMPDIR+'3_determination_of_e.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------