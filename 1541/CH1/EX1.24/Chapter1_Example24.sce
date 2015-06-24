//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
Pg=120000;//Power delivered when generator in W
Ng=1000;//Prime mover speed in rpm
Vg=600;//Terminal voltage given by the generator in V dc
Pm=120000;//Power taken as motor in W
Vm=600;//Terminal voltage when motor in V dc
Ra=0.05;//Armature resistance in ohm
Rsh=200;//Field resistance in ohm
Vb=1;//Brush drop in V
Ng=1000;//Speed of the generator in rpm

//CALCULATIONS

//When operated as a generator
IL1=(Pg/Vg);//Load current in A
If1=(Vg/Rsh);//Filed current in A
Ia1=(IL1+If1);//Armature current in A
Eg=(Vg+(Ia1*Ra)+Vb);//Generated emf in V

//When operated as a motor
IL2=(Pm/Vm);//Load current in A
If2=(Vm/Rsh);//Field current in A
Ia2=(IL2-If2);//Armature current in A
Eb=(Vm-(Ia2*Ra)-Vb);//Back emf in V

Nm=(Ng*Eb)/Eg;//Speed of the motor in rpm

//OUTPUT
mprintf('Speed of the dc machine when operated as a motor is %3.0f rpm',Nm)

//=================================END OF PROGRAM==============================
