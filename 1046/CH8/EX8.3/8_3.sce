//Example 8.3
//How will the heat teansfer rate and the exit oil temp. 
//be affected if the water flow rate is increased by 20 %

//Given
//for hot stream
Wh=10000                //kg/h, Rate of leaving a hydrolic system by the oil
Cph=0.454               //Kcal/Kg C, specific heat of oil
Th1=85                  //C initial temp. of oil
Th2=50                  //C final temp. of oil 

//For  cold stream
Cpc=1                   //Kcal/Kg C, specific heat of water
Tc2=30                   //C final temp. of water
Tc1=38                   //C initial temp. of water
//from heat balance eq.
//kg/h, Rate of leaving a hydrolic system by the water
Wc=Wh*Cph*(Th1-Th2)/(Cpc*(Tc1-Tc2))
//For the hot stream
Cmin=Wh*Cph            //Kcal/h C.Taking hot stream as min. stream
//For cold stream
Cmax=Wc*Cpc             //Kcal/h C.Taking cold  stream as max. stream
Cr=Cmin/Cmax             //Capacity ratio
n=(Th1-Th2)/(Th1-Tc2)     //effectiveness factor
//From eq. 8.57
//No. of transfer units
NTU=-(1+(Cr)^2)^-(1/2)*log(((2/n)-(1+Cr)-(1+(Cr)^2)^(1/2))/((2/n)-(1+Cr)+(1+(Cr)^2)^(1/2)))
Ud=400                  //kcal/h m^2C , overall dirty heat transfer coefficient
//from eq. 8.53
A=(NTU*Cmin)/Ud         //Area required
//if the water rate is increased by 20 %,
a=20
Wc_=Wc+(Wc*(a/100))
Cmax_=Wc_*Cpc
Cr_=Cmin/Cmax_
//From eq. 8.56
n_=2*((1+Cr_)+(1+(Cr_)^2)^(1/2)*(1+exp(-(1+(Cr_)^2)^(1/2)*NTU))/(1-exp(-(1+(Cr_)^2)^(1/2)*NTU)))^(-1)
Th2_=Th1-(n_*(Th1-Tc2))
q1=Wh*Cph*(Th1-Th2)   //kcal/h previous rate of heat transfer
q2=Wh*Cph*(Th1-Th2_)   //kcal/h new rate of heat transfer
//increase in rate of heat transfer
dq=(q2-q1)/q1  
printf('the heat teansfer rate will be affected by %f percent ",dq*100 )
