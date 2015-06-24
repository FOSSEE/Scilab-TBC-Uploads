clear;
clc;
printf("\t Example 3.5\n");
Kg=2.72*10^-4;            //overall gas phase mass transfer coefficient in kmol/m^2*S*atm
r_gas=0.85*(1/Kg);        //given that gas phase resisitance is 0.85 times overall resistance
kg=1/r_gas;            
m=9.35*10^-3;            //henry's law constant in atm*m^3/kmol
kl=m/(1/Kg-1/kg);        //liquid phase mass transfer coefficient in m/s
printf("\nthe value of liquid film coefficient kl : %f*10^-5 m/s",kl/10^-5);
printf("\nthe value of gas film coefficient kg : %f*10^-5 m/s",kg/10^-5);
p=1;                     //overall pressure in atm

        //NA=Kg(pag-pa*)=kg(pag-pai)=kl(Cai-Cal)
Yag=0.1;                //molefraction of ammonia
Cal=6.42*10^-2;         //liquid phase concentration 
Pag=Yag*p;              //pressure of ammonia
         //Pai and Cai indicates interfacial pressure and conc.
        //Pal and Cal indicates bulk pressure and conc.

        //Pai=m*C_ai;
        //NA=kg(pag-pai)=kl(Cai-Cal)
        
Cai=poly([0],'Cai');        //calc. of conc. in gas phase
x=roots((Pag-m*Cai)*(kg/kl)-(Cai-Cal));
printf("\nthe value of interphase conc.cai :%f kmol/m^3",x);
Pai=m*x;
printf("\nthe value of interphase pressure pai is:%f atm",Pai);
//end