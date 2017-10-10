clc;funcprot(0);//EXAMPLE 10.10
// Initialisation of Variables
Ma=10;.........//Mass of alloy to be produced in Kg
%Ni=35;........//Percentage of Nickel in Cu-35% Ni
Wn=3.5;.......//total nickel in the 35% alloy being produced
%Cu=20;.......// Percentage of Copper in Cu-35% Ni
//CALCULATIONS
Mn=Ma*(%Ni/100);.....//The total mass of Ni needed in Kg
X=((Wn*100)-(Ma*100))/-80;....//No.of Kg of Cu-35% Ni to melt with 1.875 kg of pure nickel to produce the required alloy
disp(Mn,"The total mass of Ni needed in Kg:")
disp(X,"Weight of Cu-20%Ni to be melted:")
