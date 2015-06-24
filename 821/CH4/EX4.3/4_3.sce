P=380;//pressure of 11g of CO2 at 273K in mm of Hg//
T=273;//Initial temperature of 11g of CO2 in kelvin//
V=11.2;//Volume occupied by 11g of CO2 in litres at 273K//
P1=760;//changed pressure of 11g of CO2 at 546K in mm of Hg//
T1=546;//Final temperature of 11g of CO2 in kelvin//
V1=(P*V*T1)/(T*P1);//changed volume of 11g of CO2 at 760mm pressure in litres//
printf('Volume of 11g of CO2 at 760 mm Hg pressure at 546K=V1=%flitres',V1);
