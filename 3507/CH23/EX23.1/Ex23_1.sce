//chapter23
//example23.1
//page509

printf("1) Breakover voltage of 400V : It means that if gate is open and the \n")
printf("   supply voltage is 400V, then SCR will start conducting heavily. \n")
printf("   However,as long as the supply voltage < 400V, SCR stays open. \n \n")

printf("2) Trigger current of 10mA : It means that if the supply voltage is \n")
printf("   less than breakover voltage and a minimum gate current of 10 mA \n")
printf("   is passed, SCR conducts. It wont conduct if gate current is less \n")
printf("   than 10mA. \n \n")

printf("3) Holding current of 10mA : When SCR is conducting, it will not open \n")
printf("   even if triggering current is removed. However, if supply voltage \n")
printf("   is reduced, anode current also decreases. When anode current drops \n")
printf("   to 10mA, the holding current, SCR turns off. \n \n")

printf("4) If gate current is increased to 15mA, the SCR will be turned on \n")
printf("   lower supply voltage. \n")
