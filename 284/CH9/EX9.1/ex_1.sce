// Chapter 9_The bipolar transistor
//Caption_Gain factors
//Ex_1//page 371
gamma=0.9967     //emitter injection efficiency factor
Nbe=(1/gamma)-1    //base to emitter doping concentration ratio
NEB=1/Nbe
printf('The emitter doping concentration must be much larger i.e.%1.0ftimes that of base',NEB)