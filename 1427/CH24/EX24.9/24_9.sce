//ques-24.9
//Calculating concentration of a compound in water and volume of chloroform which will contain 10g of this compound
clc
K=4.2;//partition coefficient
m=2;//mass of compound taken (in g)
x=(m/(K/2+1))/100;//concentration of solute in aqueous layer (in g/mL)
a=m-(x*100);//amount of solute in 50mL chloroform (in g)
v=50*(10/a);//volume of chloroform required (in mL)
printf("The concentration of the compound in water is %.5f g/mL and volume of chloroform which will contain 10g of this compound is %.0f mL.",x,v);
