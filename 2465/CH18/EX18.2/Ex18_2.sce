//Chapter-18,Example 2,Page 405
clc();
close();

W1 = 2.5     //weight of coal

W2 = 2.415   //weight of coal after heating at 110 C

W_res= 1.528  //weight of residue

W_ash= 0.245    //weight of ash

Mois= W1-W2    //moisture in sample

per_M=Mois*100/W1

printf("the percentage of moisture is %.2f ",per_M )

VCM=W2-W_res  //amount of VCM in sample

per_VCM=VCM*100/W1

printf("\n the percentage of VCM is %.2f ",per_VCM )

per_ash=W_ash*100/W1

printf("\n the percentage of ash is %.2f",per_ash )

Fix_C= W_res-W_ash  //fixed carbon

per_fix=Fix_C*100/W1

printf("\n the percentage of fixed carbon is %.2f",per_fix )

//mistake in textbook
