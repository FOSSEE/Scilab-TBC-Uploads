//Chapter 10:Traction Drives
//Example 4
clc;

//Variable Initialization
G=20              //up gradient
r=25              //train resistance N/tonne
M=500             //mass of the electric train in tonne
n=0.8             //combine effiency of transmission and motor

//Speed-Time curve characteristics
t1=50       //characteristic for uniform accelaration at v1 in sec
alpha=3     //given accelaration in km/hr/sec at t1
t2=10*60    //characteristic for constant speed in sec 
B=2.5       //uniform braking deceleration in kmphs to rest

//Solution 
Vm=alpha*t1  //peak voltage in V
t3=Vm/B      //characteristic for a uniform braking of B=2.5 kmphs

//(i)during accelaration total tractive effort 
Me=1.1*M
Fta=277.8*Me*alpha-9.81*M*G+M*r   //total tractive effort during accelaration
Da=1/2*Vm*t1/3600     //distance covered during accelaration ,and t1 is in seconds
Ea=Fta*Da*1000/3600   //energy output during accleration in Wh

//(ii)during uniform speed net tractive effort
Ftu=-9.81*M*G+M*r     //total tractive effort during uniform speed
//Ftu in the book is -105220 N  which is wrong, hence the other answers are incorrect

Du=Vm*t2/3600         //distance traveled,and t2 is in seconds
Eu=Ftu*Du*1000/3600   //energy output in Wh

//(iii)during braking net tractive effort
Ftb=-277.8*Me*B-9.81*M*G+M*r  //total tractive effort for the net braking
Db=1/2*Vm*t3/3600     //distance covered during braking
Eb=Ftb*Db*1000/3600   //energy output during braking in Wh

E=Ea/n+n*(Eu+Eb)      //net energy consumption in Wh
D=Da+Du+Db            //total distance traveled in km
Eo=E/(M*D)            //specific energy consumption in Wh

//Results 
mprintf("(i)Energy consumption during accelaration is :Ea : %.1f Wh",Ea)
mprintf("\n(ii)Energy consumption during uniform speed is :Eu : %d Wh",Eu) 
mprintf("\n(iii)Energy consumption during braking is :Eb : %.1f Wh",Eb)    
mprintf("\n Net Energy consumption  is E : %.1f Wh",E)    
mprintf("\n Total Distance traveled is D : %.4f km",D)
mprintf("\n Specific Energy consumption  is Eo : %.2f Whptpkm",Eo),
//Answers provided in the textbook are incorrect
