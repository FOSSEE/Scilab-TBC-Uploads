//chapter13
//example13.10
//page283

R1=1 // kilo ohm
R2=2 // kilo ohm
Vt=6 // V

Vb=Vt*R1/(R1+R2)

if Vb==4
    printf("circuit is operating properly \n")
else 
    printf("circuit is not operating properly because voltage at B should be %.1f V instead of 4 V \n",Vb)
end
