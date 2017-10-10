clear
//
//applying kcl to circuit at node b i3+i4=6-4=2
vb=8
vba=2 //voltage drop across nodes b and a
va=6 //potential of node a w.r.t note c
i2=3
//applying kcl to node a
isa=1
vs=va+2*isa
printf("\n vse= %0.1f  V",vs)
