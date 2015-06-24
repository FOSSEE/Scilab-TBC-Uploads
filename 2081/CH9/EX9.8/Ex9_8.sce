N=40//no. of channels in cell
Pb=0.02//blocking probability
Aav=31//offered traffic load
H=3/60//holding time
Z=Aav/(H*3)//users per cell
NC=20//no. of cells in the system
nms=NC*Z
printf('number of mobile subscribers in the system= %.f',nms);
