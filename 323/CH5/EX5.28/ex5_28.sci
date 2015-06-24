//Example5.28,Pg5.28
clc;
Wi=1 //Iron loss in kW
op=50*0.8*10+25*0.6*10+0*4
Wcu=1.2 //Copper loss in kW
Culoss=1*1.2*10+(25/50)*1.2*10+0 //Copper loss in the entire day considering the load cycle for a day as given in the question
Iloss=1*24
nallday= (op/(op+Iloss+Culoss))*100
printf("\n All day efficiency=%.2f percent \n",nallday)
