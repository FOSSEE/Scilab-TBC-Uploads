//Example 9.2
//Page no. 393
//calculae the steam requirement and the no. of tubes
//if the height of the calandria is 1.5 m.

//given
ci=10           //%,initial concentration
cf=40           //%, final conc
Wf=2000        //kg/h, feed rate
ft=30           //C feed temp.
rp=0.33         //kg/cm^2, reduced pressure
bt1=75           //C,boiling point temp.
sst=115          //C, saturated steam temp.
l=1.5             // m,height of calandria
sh=0.946        //kcal/kg C, specific heat of liquir
lh=556.5        //kcal/kg latent heat of steam
bt2=345         //K, boiling point of water 
h=2150          //kcal/h m^2 C, overall heat transfer coefficient
si=2000*(ci/100)  //kg/h, solids in
wi=1800          //kg/h,wate in
Wp=si/(cf/100)   //kg/h, product out
Wv=Wf-Wp         //evaporation rate
ef=sh*(ft-bt1)
ip=0
lamda_s=529.5   //kcal/kg, lamda_s=is-il
bpe=(273+bt1)-345  //boiling point elevation.
//from eergy balance eq.
Ws=(Wp*ip+Wv*lh-Wf*ef)/lamda_s
q=Ws*lamda_s       //kcal/h,rate of heat transfer
A=q/(h*(sst-bt1))   // m^2
di=0.0221            //m,inside diameter
At=%pi*l*di        //m^2, area of a single tube
N=A/At             //no. of tubes
printf("The steam required is %f kg/h\n",Ws)
printf("No. of tube are %f",N)


