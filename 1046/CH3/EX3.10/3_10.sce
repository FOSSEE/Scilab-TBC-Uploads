//Example 3.10
//calcuate the percentage increase in the rate of heat transfer 
//for the finned tube over the plain tube.
//Given
id=78*10^-3       //m, actual internal dia of pipe
tw=5.5*10^-3      //m, wall thickness
nl=8              //no. of longitudinal fins
tf=1.5*10^-3      //m, thickness of fin
w=30*10^-3        //m,breadth of fin
kf=45             //W/m C, thermal conductivity of fin 
Tw=150            //C, wall temp.
To=28             //C, ambient temp.
h=75              //W/m^2C, surface heat transfer coefficient

//Calculation
//from eq. 3.27
e=sqrt(2*h/(kf*tf))    
n=(1/(e*w))*tanh(e*w)  //efficiency of fin
L=1              //m, length of fin
Af=2*L*w         //m^2, area of  single fin
Atf=nl*Af          //m^2 total area of fin
Qmax=h*Atf*(Tw-To)   //W, maximum rate of heat transfer
Qa=n*Qmax           //W, actual rate of heat transfer
Afw=L*tf            //m^2, area of contact of fin with pipe wall
Atfw=Afw*nl         //m^2 , area of contact of all fin with pipe wall
ro=id/2+tw          //m, outer  pipe radius
A=2*%pi*L*ro        //m^2  area per meter
Afree=A-Atfw        //m^2, free outside area of finned pipe
//Rate of heat transfer from free area of pipe wall
Q1=h*Afree*(Tw-To)  //W, 
//total rate of hewat gtransfer from finned pipe
Qtotal=Qa+Q1        //W
//Rate of heat transfer fromm unfinned pipe
Q2=h*A*(Tw-To)
per=(Qtotal-Q2)/Q2
printf("the percentage increase in the rate of heat transfer is %f percent ",per*100)
