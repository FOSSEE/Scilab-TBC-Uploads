clear;
clc;
printf("\t Example 3.6\n");
//kg/kl=0.9=t       
//Pai=0.3672*Cai    so;              
m=0.3672;
t=.9;
        //Pai and Cai indicates interfacial pressure and conc.
        //Pal and Cal indicates bulk pressure and conc.
Yag=0.15;                //molefraction of ammonia
Cal=0.147;         //liquid phase concentration in kmol/m^3
p=1;                    //overall pressure
Pag=Yag*p;              //pressure of ammonia

        //Pai=m*C_ai;
        //kg/kl=(Cai-Cal)/(Pag-Pai);
        
Cai=poly([0],'Cai');        //calc. of conc. in gas phase
x=roots((Pag-m*Cai)*(t)-(Cai-Cal));
printf("\nthe value of  conc. of ammonia cai is  :%f kmol/m^3",x);
Pai=m*x;
printf("\nthe value of interphase pressure Pai is  :%f atm",Pai);