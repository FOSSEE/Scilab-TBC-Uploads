//Example 9.5
//Determine the maximum no. of effects to be used.
//given
ssp=3.32     //bar abs, saturated steam pr.
rp=0.195     // bar abs, residual pr. in the condenser
tl=41      //K, sun of temp. losses because of BPE
mt=8        //k,minimum available temp. driving force
//calculation
sst=410     //K,saturated steam temp.
st=333        //K,corresponding saturation temp. when pressure in the last effect is 0.195 bar
ttd=sst-st    //K,total temp. difference
atd=ttd-tl    // K,available temp. drop across the unit
n=atd/mt     //maximum no. of effect
printf("Maximum no. of effects are %f",n);