// Chapter_3 Generalized Performance Characteristics Of Instruments
//Caption:First order instrument
//Example 5
//Page no. 96
d=.004   //('Enter the diameter of the diameter of the sphere in meters=:')
p=13600  //('Enter the density of the liquid in glass bulb=:')
c=150   //('Enter the specific heat of liquid(in j/kg degree centigrade)=:')
U=40  //('Enter the heat transfer coefficient in W/m^2-degree centigrade=:')

Vb=(%pi*d*d*d)/6;    //Volume of sphere
Ab=%pi*d*d;    //Surface area of sphere
timconstant=(p*c*Vb*1000)/(U*Ab);    //time constant
disp(timconstant)

