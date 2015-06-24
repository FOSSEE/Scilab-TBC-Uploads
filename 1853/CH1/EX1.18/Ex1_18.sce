
//convert the delta circuit
Rry=4
Ryb=1
Rbr=5
Rr=(Rbr*Rry)/(Rry+Rbr+Ryb)
Ry=(Rry*Ryb)/(Rry+Rbr+Ryb)
Rb=(Rbr*Ryb)/(Rry+Rbr+Ryb)
disp('Rb='+string(Rb)+  'ohms'  ,  'Ry='+string(Ry)+ '  ohms'   ,  'Rr='+string(Rr)+'  ohms')
