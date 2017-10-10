clear
//
//given
za=50
zb=15  //j15
zc=-15 //-j15
vl=440
vab=440 //with an angle of 0
vbc=440 //with an angle of -120
vca=440 //with an angle of -240
//applying kvl to meshes as in the diagram we get the following equations
//50i1+j15(i1-i2)-440(angle 0)=0,j15(i2-i1)+(-j15)i2-440(angle 120)=0
//solving the above 2 eqns we get the values of ia,ib and ic as follows
printf("\n ia=29.33A")
printf("\n ib=73.83A")
printf("\n ic=73.82A")
//the voltage drops across vr,vl and vc which are voltages across resistance ,inducctance and capacitance are given as follows
printf("\n vr=1466.5V")
printf("\n vl=73.83V")
printf("\n vc=73.83V")
//the potential of neutral point
printf("\n vn=1212.45V")
