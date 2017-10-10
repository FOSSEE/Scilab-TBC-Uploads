//ques-2.7
//Calculating Higher and Lower calorific value
clc
V=0.1;//Volume of gas used (in kL)
W=25;//Weight of water heated (in kg)
t1=20;//Inlet temperature
t2=33;//Outlet temperature
m=0.025;//Weight of steam condensed (in kg)
L=580;//Latent heat of condensation (in kcal/kg)
HCV=(W*(t2-t1))/V;//Higher calorific value
LCV=HCV-(m/V)*L;//Lower calorific value
printf("Higher calorific value is %d kcal/kL and Lower calorific value is %d kcal/kL.\n",HCV,LCV);
