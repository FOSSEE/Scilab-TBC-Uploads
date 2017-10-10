//Example 18.7//

y=[0 9 9.2 5.3 0]; //B(webers/m^2)
x=[0 0.30 0.46 0.53 0.56]; //(BH(weber A/m^3 = J/m^3)
plot2d(x,y, style=1)
mprintf("(BH)max ~10*10^3 J/m^3")
ylabel("BH*(kJ/m^3)","fontsize",4);
xlabel("B(web/m^2)","fontsize",4);
