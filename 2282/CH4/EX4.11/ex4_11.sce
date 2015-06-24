// Example 4.11, page no-154
clear
clc
d=20         //received signal strenth in dB
loss=3       //incident polarization is circular and antenna is circularly polarized
theta=60    //received wave making angle with horizontal
total=d+loss
los=d*log10(1/cosd(theta))

printf("(a)\n When received polarization is same as antenna \n polarization,thepolarization loss is zero.\n Therefore, received sinal strenth = %ddB",total)
printf("\n\n(b)\n When the incident wave is vertically polarized,\n the angle between incident polarization and antenna polarization is 90°\n Hence, Polarization loss = infinity\n received signal strength = 0")
printf("\n\n(c)\n When incident wave is left-hand circularly polarized\n and antenna polarization is linear,\n then there is polarization loss of %ddB and\n received signal strength is %ddB",loss,d)
printf("\n\n(d)\n Polarization loss = %ddB \n Received signal strength = %ddB",los,ceil(total-los))
