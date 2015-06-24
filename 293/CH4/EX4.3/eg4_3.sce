//ad
Zab = complex(1,-0.5); //impedance appearing across terminals ab
Zbg = complex(1); //impedance appearing across terminals bg
Zbcd = complex(2+1,2); //impedance appearing across terminals bcd
Zad = Zab + (Zbg*Zbcd/(Zbg + Zbcd)); //impedance appearing across terminals ad
disp(Zad,"impedance appearing across terminals ad = ")

//dg 
Zdg = Zbg + (Zab*Zbcd/(Zab+Zbcd)); //impedance appearing across termainals dg
disp(Zdg,"impedance appearing across terminals dg = ")