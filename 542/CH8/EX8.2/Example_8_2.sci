clear; 
clc;
printf("\n Example 8.2");

//From the gel polarisation model:
         //J = (1/A)(dV/dt) = hD ln(Cg/Cf)
         //Cf = Co(Vo/V)
  //where Co and Vo are the initial concentration and volume,respectively and Cf and V are the values at subsequent times
  //Combining these eq gives
        //dV/dt = A(hDln(Cg/Co)-hDln(Vo/V))
V = [10 5 3 2 1];
y = [9.90 13.64 18.92 27.30 112.40];
plot(V,y)
xtitle("Area under the curve is 184.4","Volume(m^3)","(J - hDln(Vo/V))^(-1)")


//(b)
Jo = 0.04*log(250/20);
printf("\n Jo = %.3f m/h",Jo);
Jf = 0.04*log(250/200);
printf("\n Jf = %f m/h",Jf);
Jav = Jf + 0.27*(0.101-0.008);
printf("\n Jav = %f m/h",Jav);
//For the removal of 9m^3 filtrate in 4 hours
Area = (9/4)/Jav;
printf("\n Area = %fm^2",Area);

