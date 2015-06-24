clear;
clc;
printf("\n Example 11.12");
R = [0.85 1.0 1.5 2.0 3.0 4.0];    //Reflux ratio
xd = 0.75;                         //top concentration of alcohol
xs = [0.55 0.50 0.37 0.20 0.075 0.05];//From the graph fig.11.35 page-596
Db(1) = 0;

printf("\n   R              Fi                xs          Db   ");
i=1;
while i<=6
    Fi(i) = xd/(R(i) + 1);
    if i>1 then
    Db(i) = 100*(xs(1)-xs(i))/(xd-xs(i));
    end
   printf("\n %.2f        %.3f         %.2f       %.1f",R(i),Fi(i),xs(i),Db(i));
    i=i+1;
end
plot(R,Db);
xtitle("","Reflux ratio(R)","Product Db (kmol)");
printf("\n The area under the Db vs R curve is given by 96 kmol");
Hav = 4000;            //average latent heat in kJ/kmol
Qr = 96*Hav/1000;
printf("\n Heat to be supplied to provide the reflux,Qr is approximately %.1f MJ",Qr);
printf("\n Heat to be supplied to provide the reflux per kmol of product is then %.2f MJ",380/71.4);
printf("\n Total heat = %.2f MJ/kmol product",5.32+4.0);

















