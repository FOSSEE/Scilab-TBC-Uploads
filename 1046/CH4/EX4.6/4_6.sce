//Example 4.6
//Calculate the required rate of flow of water.
//calculate the overall heat transfer coefficient
//Given
mo_=1000           //kg/h, cooling rate of oil
cpo=2.05           //kj/kg C, specific heat of oil
T1=70              //C, initial temp. of oil
T2=40              //C,  temp. of oil after cooling
cpw=4.17           //kj/kg C, specific heat of water
T3=42              //C, initial temp. of water
T4=28              //C,  temp. of oil after cooling
A=3                //m^2, heat exchange area
//Calculation,  rate of flow of water
mw_=mo_*cpo*(T1-T2)/(cpw*(T3-T4))
printf("the required rate of flow of water is %f kg/h \n",mw_)
Q=mo_*cpo*(T1-T2)/3600       //kw, heat duty
dt1=T1-T3         //C, hot end temp. difference
dt2=T2-T4          //C, cold end temp. difference
LMTD=(dt1-dt2)/(log(dt1/dt2))  //log mean temp. difference
dtm=LMTD
U=Q*10^3/(A*dtm)
printf("the overall heat transfer coefficient is %f W/m^2 C",U)
