clc
clear

//input data
mi=15000 //mass of the rocket in kg
mp=125 //propellant mass flow in kg/s
Cj=2000 //velocity of gases coming out in m/s
t=70 //time interval in sec
t0=0 //lower limit in integration in sec
t1=70 //upper limit in integration in sec
g=9.81 //acceleration due to gravity in m/s^2

//calculation
u=(-Cj*(log(1-((mp*t)/mi))))-(g*t) //velocity attained in 70 sec in m/s
h1=(integrate('((-2000*(log(1-((125*t)/15000))))-(g*t))','t',t0,t1))*10^-3 //distance travelled through 70 sec obtained by integrating u w.r.t time with intervals 0 to 70 in km
h2=(u^2/(2*g))*10^-3 //distance reached after fuel last i.e. after 70 sec due to kinetic energy by using KE=PE in km
h=h1+h2 //maximum height the rocket will reach in km

//output
printf('(A)velocity attained in %i sec is %3.2f m/s\n (B)maximum height the rocket will reach is %3.3f km',t,u,h)
