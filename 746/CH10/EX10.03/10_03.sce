//Pump Power//
pathname=get_absolute_file_path('10.03.sce')
filename=pathname+filesep()+'10.03-data.sci'
exec(filename)
[nQ mQ]= size(Q);
[nps mps]=size(ps);
[npd mpd]= size(pd);
[nI mI]= size(I);
//Correct measured static pressures to he pump centreline p1, p2(in psig):
 j=1:mps;
  p1=ps(j)+px*g*zs/144
   j=1:mpd;
  p2=pd(j)+px*g*zd/144
  //The value of Pump head(in feet):
  j=1:mps;
  Hp=(p2(j)-p1(j))/(px*g)*144
  //Values of Hydraulic Power delivered(in hp):
   j=1:mps;
   Wh=Q(j).*(p2(j)-p1(j))/7.48/60*144/550
   //Values of motor power output(in hp):
  j=1:mI;
  Pin=Effm*sqrt(3)*PF*E*I(j)/746
  //Values of Pump Efficiecy:
   j=1:mI;
  Effp= Wh(j)./Pin(j)*100
  //Plotting pump characteristics:
   plot(Q,Hp,"-o")
  plot(Q,Pin,"-+")
  plot(Q,Effp,"-*")
  xtitle('Pump Characteristics','Volume flow rate(in gpm)',['Pump Efficincy(%)    ','   Pump Head(in feet)   ','    Pump Power input(in hp)   '])
  legend('Hp','Pin','Effp')



