clc
h3=2686.16 //in kJ/kg
hf=1008.4 //in kJ/kg
hg=2802.3 //in kJ/kg
h2=h3
X2=(h2-hf)/(hg-hf)
mprintf("X2=%f\n",X2)//ans vary due to roundoff error
m1=1000 //mass of wet steam in grams 
mc=30 //mass of condensate  in grams
X1=X2*(1-(mc/m1))
mprintf("X1=%f",X1)//ans may vary due to roundoff error
