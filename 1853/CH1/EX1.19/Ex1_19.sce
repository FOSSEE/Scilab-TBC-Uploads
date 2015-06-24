
//convert star circuit
Rr=2
Ry=0.67
Rb=1
Rry=(Rr*Ry)+(Ry*Rb)+(Rb*Rr)/Rb
Ryb=(Rr*Ry)+(Ry*Rb)+(Rb*Rr)/Rr
Rbr=(Rr*Ry)+(Ry*Rb)+(Rb*Rr)/Ry
disp('Rbr='+string(Rbr)+'ohms'  ,  'Ryb='+string(Ryb)+'ohms'  ,  'Rry='+string(Rry)+  'ohms')
