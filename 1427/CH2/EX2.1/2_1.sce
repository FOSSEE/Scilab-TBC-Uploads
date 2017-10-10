//ques-2.1
//Calculating gross and net calorific value
clc
C=85;//Pecentage of Carbon in coal
H=8;//Pecentage of Hydrogen in coal
S=1;//Pecentage of Sulphur in coal
L=587;//Latent heat of steam
O=0;//Nothing is given
GCV=(8080*C+34500*(H-O/8)+2240*S)/100;//Gross calorific value
NCV=GCV-(0.09*H*L);//Net calorific value
printf("The gross and net calorific values are %.1f kcal/kg and %.1f kcal/kg reapectively.\n",GCV,NCV);
