clear
//The force of 3000 N acts along line AB. Let AB make angle alpha with horizontal.

//

//variable declaration
F=3000                        //force in newtons,'N'
BC=80                         //length of crank BC, 'mm'
AB=200                        //length of connecting rod AB ,'mm'
theta=60*%pi/180               //angle b/w BC & AC

//calculations

alpha=asin(BC*sin(theta)/200)*180/%pi 

HC=F*cos(alpha*%pi/180)                    //Horizontal component 
VC= F*sin(alpha*%pi/180)                   //Vertical component 

//Components along and normal to crank
//The force makes angle alpha + 60  with crank.
alpha2=alpha+60
CAC=F*cos(alpha2*%pi/180)             // Component along crank 
CNC= F*sin(alpha2*%pi/180)             //Component normal to crank 


printf("\n horizontal component= %0.1f  N",HC)
printf("\n Vertical component =  %0.1f  N",VC)
printf("\n Component along crank = %0.1f  N",CAC)
printf("\n Component normal to crank= %0.1f  N",CNC)
