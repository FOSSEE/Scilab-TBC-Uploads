
//Example 9.8
//make a mechanical vapour recompression calculation.
//given
q=2200         //kj/kg heat of condensation of steam 
//from example 9.1
Qr=2.337*10^8      //kj/day  rate of heat supply
//calculation
Rate=Qr/q          //kg/day steam supply rate
Rate_=1.062*10^5   //approximate value
E=2800             //kj/kg enthalpy of compressed vapour
T=175.7            //C, temprature
Ts=121             //C Saturation temprature
E1=2700            //enthalpy at saturation temprature
q1=T-Ts            //Superheat of vapour
T1=100             //C hot water temprature
E2=419              //Enthalpy at hot water temp.
x=(E-E1)/(E1-E2)    //water supplied per kg of superheated steam
S=1.044             //steam obtained after desuperheating
R1=8.925*10^4       //kg/day rate of vapour generation 
R2=S*R1             //Rate of recompressed sat. steam
R2_=9.318*10^4       //approximate value
SR=Rate_-R2_        
printf("Make up steam required is %f kg/day",round(SR))

