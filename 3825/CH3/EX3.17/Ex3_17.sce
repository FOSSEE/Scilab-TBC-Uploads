clc
vc=0.00317
vf=0.0010434
vg=1.694
X=(vc-vf)/(vg-vf)
mprintf("X=%f\n",X)
mprintf("volume of liquid=%fmetre-cube\n",(1-X)*vf)
mprintf("Volume of vapor=%fmetre-cube\n",X*vg)
mprintf("Ratio of liquid to vapor by volume=%f\n",((1-X)*vf)/(X*vg))//ans may vary due to roundoff error


