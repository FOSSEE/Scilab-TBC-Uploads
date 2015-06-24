//chapter-10,Example10_9,pg 503

err=0.5*10^-2//(+/-)0.5%

R=100*10^6//test resistance

//Re=((R*2*Rip)/(R+(2*Rip)))

Re1=R-(err*R)//err=+0.5

Re2=R-(-err*R)//err=-0.5

Rip1=((R*Re1)/(2*(R-Re1)))//err=+0.5

Rip2=((R*Re2)/(2*(R-Re2)))//err=-0.5

printf("resistance of each insulating post-1\n")

printf("Rip1=%.2f ohm\n",Rip1)

printf("resistance of each insulating post-2\n")

printf("Rip2=%.2f ohm",Rip2)
