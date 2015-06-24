clc

a=0.05 // m
Fm=90 //kN
sigmacr=210 // MPa
sigmayp=280 // MPa

//sigmaa=Ma*c/I         equation 1
//Ma=0.025*Fa
c=0.025
I=(a^4)/12
disp(I)
//sigmaa=((0.025*Fa)*c)/I  substituting the values


//sigmam=Fm/A           equation 2
sigmam=Fm/(a*a)
disp(sigmam,"in kilo Pa is= ")

//(((1200*Fa)/sigmacr)+(sigmam/sigmayp))=1
Fa=(1-(sigmam/sigmayp))*(sigmacr/1200)
disp(Fa,"load Fa in N is= ")                         //wrong ans in textbook
