

//Variable declaration
Idson=0.2
Vgs=5                      //gate to source voltage(V)
Vdd=12                     //drain voltage(V)
Vt=2                       //thevinine voltage(V)
R1=100.                    //resistance(k ohms)                               
R2=100.                    //resistance(k ohms)   
Rd=30                      //drain resistance(K ohms)
Rs=6                       //source resistance(k ohms)
deltaVdd=0.3               //change in Vdd(V)
rds=50                     //internal drain to source resistance()

//Calculations
//Part a
k=Idson/((Vgs-Vt)**2)              //device parameter
Vgg=Vdd*(R1/(R1+R2))               //gate voltage(V)
Vgs=4.89                           //gate to source voltage(V)
Id=k*(Vgs-Vt)**2                   //drain current(mA)
Vds=Vdd-((Rd+Rs)*Id)               //drain to source voltage(V)
gm=2*(sqrt(k*Id))             //transconductance(mS)
deltaVgg=deltaVdd*(R2/(R1+R2))     //change in Vgg(V)

vgs=0.105                          //as vgs=0.15-6id where id=u*vgs/(rds+Rs+Rd)=0.74vgs after solving
id= 0.074*vgs*10**3

//Results
printf ("id is %.2f uA",id)
