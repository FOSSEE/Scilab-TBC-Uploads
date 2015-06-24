//find hole tolerance,shaft tolerance and allowance
clc
//solution
//given
lh=25//mm//lower limit of hole
uh=25.02//mm//upper limit of hole
ls=24.95//mm//lower limit of shaft
us=24.97//mm//upper limit of shaft
h=uh-lh//mm//hole tolerance
s=us-ls//mm//shaft tolerance
a=lh-us//mm//alownce
printf("the hole tolerance is,%f mm\n",h)
printf("the shaft tolerance is,%f mm \n",s)
printf("the allowance is,%f mm",a)