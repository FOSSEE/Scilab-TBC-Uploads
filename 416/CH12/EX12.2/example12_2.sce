clc
clear
disp('example12_2')
l1=3000 //load on 1 machine
pf1=0.8  //pf on 1 machine
i2=150  //current on  2 machine
z1=0.4+12*%i  //synchronour impedence
z2=0.5+10*%i
vt=6.6  //terminal voltage
al=l1/2  //active load on each machine
cosdb=al/(vt*i2*sqrt(3)) //cos db
db=acosd(cosdb)  //angle in digree
ib=i2*complex(cosdb,-sind(db))  //current in complex number
it=l1/(vt*pf1*sqrt(3))  //total current
itc=complex(it*pf1,-it*sind(acosd(pf1)))  //total current in complex
ia=itc-ib  
pfa=atan(imag(ia)/real(ia))  //pf of current a
ea=(vt/sqrt(3))+ia*(z1)/1000  //voltage a
pha=atand(imag(ea)/real(ea))  //phase angle of unit a
printf("induced emf of a machine a %.2f+%.2fi =%fkV per phase",real(ea),imag(ea),abs(ea))
eb=(vt/sqrt(3))+ib*(z2)/1000  //voltage b
phb=atand(imag(eb)/real(eb))  //phase angle of unit b
printf("\ninduced emf of a machine b %.2f+%.2fi =%fkV per phase",real(eb),imag(eb),abs(eb))
