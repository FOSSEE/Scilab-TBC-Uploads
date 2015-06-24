//chapter-5,Example5_6,pg 493

Tz=0.6*10^-3//discharge time

Vref=1//ref. voltage

t=4*10^-3//integrator time const.

Vk=((Vref*Tz)/t)//rise in output integrator

printf("rise in integrator output\n")

printf("Vk=%.2f V\n",Vk)

Vi=0.2//input voltage

Tu=Vref*(Tz/Vi)//charging time

printf("charging time\n")

printf("Tu=%.4f sec",Tu)  