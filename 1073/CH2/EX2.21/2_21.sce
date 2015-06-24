//Exaample2.21
//Given
k1=0.7   //common brick   W/((m.K)
k2=0.48  //gypsum layer [W/(m.K)
k3=0.065 //Rockwool    [W/m.K]
//Heat loss with insulatiob will be 20% of without insulation
A=1      //sq m
x1=0.1   //[m]
x2=0.04 //[m]
R1=x1/(k1*A)   //K/W
R2=x2/(k2*A)   //K/W
R=R1+R2        //K/W
//R3=x3/(k3*A)
QbyQd=0.2
sigRbyRd=QbyQd
x3=(R/QbyQd-R)/15.4 //m
x3=x3*1000          //[mm]
printf("Thickness of rockwool insulation =%f mm",x3)