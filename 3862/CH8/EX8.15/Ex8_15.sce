clear
//variable declaration
// Let the x, y, z be the mutually perpendicular directions

pr=(0.3)
PX=(15)                        //Loading in x-direction,KN
PY=(80)                        //Loading in Y-direction(compressive),KN
PZ=(180)                       //Loading in Z-direction,KN

//Area in X-,Y-,Z-Direction is AX,AY,AZ respectively,mm^2

AX=(10*30)
AY=(10*400)
AZ=(30*400)

//stress devoloped in X-,Y-,Z- direction as px,py,pz respectively,N/mm^2

px=PX*1000/AX
py=PY*1000/AY
pz=PZ*1000/AZ

//Noting that a stress produces a strain of p/E in its own direction, the nature being same as that of stress and µ p E in lateral direction of opposite nature, and taking tensile stress as +ve, we can write expression for strains ex, ey, ez.
E=2*100000                       //young's modulus,N/mm^2

ex=(px/E)+(pr*py/E)-(pr*pz/E)
ey=(-pr*px/E)-(py/E)-(pr*pz/E)
ez=(-pr*px/E)+(pr*py/E)+(pz/E)

ev=ex+ey+ez                 //Volumetric strain

volume=10*30*400

Changeinvolume=ev*volume

printf("\n Change in volume= %0.2f  mm^3",Changeinvolume)
