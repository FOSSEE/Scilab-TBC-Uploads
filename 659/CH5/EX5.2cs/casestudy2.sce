//                Case Study:-Chapter 5
//               2.Pay-Bill Calculations
CA1=1000;
CA2=750;
CA3=500;
CA4=250;
EA1=500;
EA2=200;
EA3=100;
EA4=0;
level=1;
while(level)
    printf("Enter 0[zero] for level to end");
    //Read data
    level=input("Enter level:");
    if(level==0)
        break;
    end
    printf("Enter job number, and basic pay\n");
    //Read data
    [jobnumber,basic]=scanf("%d %f");
    //Decide level number and calculate perks
    select level
    case 1 then perks=CA1+EA1;
    case 2 then perks=CA2+EA2;
    case 3 then perks=CA3+EA3;
    case 4 then perks=CA4+EA4;
    else
        printf("Error in level code");
        return;
    end

    house_rent=0.25*basic;
    //Calculate gross salary
    gross=basic+house_rent+perks;
    //Calculate income tax
    if (gross<=2000) then
        incometax=0;
    elseif(gross<=4000)
        incometax=0.03*gross;
    elseif(gross<=5000)
        incometax=0.05*gross;
    else
        incometax=0.08*gross;
    end
    //Compute the net salary
    net=gross-incometax;
    //Print the results
    printf("%d %d %.2f\n",level,jobnumber,net);
end
printf("END OF THE PROGRAM");




