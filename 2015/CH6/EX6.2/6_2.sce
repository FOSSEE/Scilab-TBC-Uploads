clc
//initialisation of variables
hd=159 //heat drop in kj/kg
eff=0.89 //and its corresponding efficiency is mentioned
ra=0.4 //ratio of blade speed to steam speed
sp=3000 //rotational speed of an impulse turbine wheel in revolutions
a=20 //angle is 20 degrees
beff=0.76 //blade efficiency
cwo=5.4 //m/s
pi=(22/7)
bvc=0.82 //blade velocity coefficient
m=15 //mass is 15 kgs
//CALCULATIONS
ci=44.72*sqrt(eff*hd)
u=ci*ra
dm=(60*u)/(sp*0.3184)
cfi=ci*sin(20*(pi/180))
cwi=ci*cos(20*(pi/180))
cri=sqrt((cwi-u)^2+(cfi)^2)
cro=bvc*cri
x=(beff*(ci)^2)/(2*u) //x=cwi-cwo
theta=atan((cfi/(cwi-u)))*(180/pi)
cfo=sqrt((cro)^2-(cwo+u)^2)
co=sqrt((cwo)^2+(cfo)^2)
bet=(asin(cfo/co))*(180/pi)
pd=(m*x*u)/1000
re=hd-(pd/15)
phi=asin((cfo/cro))*(180/pi)
//RESULTS
printf('mean blade ring diameter is %2fm',dm) //textbook answer is wrong
printf('\npower developed is %2fkw',pd)
printf('\nresidual energy at out let foe friction and nozzle efficiency is %2fkw/kg',re)
printf('\nblade angles are %2f,%2f,%2f',theta,bet,phi)

