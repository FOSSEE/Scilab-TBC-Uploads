//chapter 2
//GT=GR=Antilog[GT or Gr(in db)/10]=31.622*10^3
//1 mile=1609.35 m
printf("\n");
freq=3*10^9;
d=48280.5;//30miles*1609.35
lamda=(3*10^8)/(3*10^9);
printf("the wavelength is %gm",lamda);
Pt=(10^-3)*((4*(%pi)*48280.5)/0.1)^2*(1/(31.622*10^3)^2);//Pr=Pt(GR*GT*(lamda/4*pi*d)^2),Pr=1mW
printf("\nthe transmitter power is %gW",Pt);
