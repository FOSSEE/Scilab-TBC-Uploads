clc

disp("(a) The erosion of the moving blades is caused by the presence of water particles in (wet) steam in the L.P. stages. The water particles strike the leading surface of the blades. Such impact, if sufficiently heavy, produces severe local stresses in the blade material causing the surface metal to fail and flake off.")

disp(" The erosion, if any, is more likely to occur in the region where the steam is wettest, i.e., in the last one or two stages of the turbine. Moreover, the water droplets are concentrated in the outer parts of the flow annuals where the velocity of impact is highest.")
disp("Erosion difficulties due to moisture in the steam may be avoided by reheating. The whole of steam is taken from the turbine at a suitable point 2, and a further supply of heat is given to it along 2-3 after which the steam is readmitted to the turbine and expanded along 3-4 to condenser pressure. Erosion may also be reduced by using steam traps in between the stages to separate moisture from the steam.")



disp("(b) TTD means “Terminal temperature difference”. It is the difference between temperatures of bled steam/condensate and the feed water at the two ends of the feed water heater")



disp("Part (c)")

h1=3580; //kJ/kg
h2=3140; //kJ/kg
h3=3675; //kJ/kg
h4=2335; //kJ/kg
h5=191.8; //kJ/kg

P=15*10^3; //kW
a=0.104; //moisture content in exit from LP turbine

p=40; //bar; From the mollier diagram
disp("(i)Reheat pressure=") 
disp(p)
disp("bar")

disp("(ii) Thermal efficiency")
W=h1-h2+h3-h4;
Q=h1-h5+h3-h2;
n_th=W/Q*100; 
disp("n_th=")
disp(n_th)
disp("%")

sc=P/W;//steam consumption
ssc=sc*3600/P; //specific steam consumption
disp("Specific steam consumption=")
disp(ssc)
disp("kg/kWh")

disp("(iv) Rate of pump work =")
rate=sc*0.15;
disp(rate)

