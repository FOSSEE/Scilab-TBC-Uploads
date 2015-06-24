clc
Wa=28.1
disp("Wa = "+string(Wa)) //initializing value of atomic weight.
D=2.33
disp("D = "+string(D)+"gram/cm^3") //initializing value of density.
Na=6.02*10^23
disp("Na = "+string(Na)+"atoms/mole") //initializing value of avagadro number.
na =(Na*D)/(Wa)
disp("na =(Na*D)/(Wa)= "+string(na)+" atoms/cm^3")//calculation

//the value of na (number of atoms in 1 cm^3 of silicon), provided after calculation in the book is wrong.
