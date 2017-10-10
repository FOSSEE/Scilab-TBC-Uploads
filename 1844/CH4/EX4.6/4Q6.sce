clc
B= 90 //from diagram in degrees
BC=200 // in m
CD=BC/cosd(60) // in m from triangle BCD
CE=BC/cosd(45) // in m from triangle BCE
BE=BC*tand(45) // in m

printf('CD = %f m\n',CD)
printf(' CE = %f m\n',CE)
printf(' BE = %f m',BE)

